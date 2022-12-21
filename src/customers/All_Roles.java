package customers;
import java.sql.*;

public abstract class All_Roles {
    public String[][] user_date(){
    try{
            Connection c =db.connect();
            PreparedStatement stmt =c.prepareStatement("select username,password,type from employee");
            ResultSet res=stmt.executeQuery();
            String[][] data=new String[count_user_data("employee","1")][3];
            int k=0;
            while(res.next()){
                if(k<=count_user_data("employee","1")){
                for (int i = 1; i <= 3; i++) {
                    data[k][i-1]=res.getString(i);
                }
                k++;}
                else
                    continue;
            }
            return data;
            
        }catch(SQLException ee){
            String[][] a={{"-999","-999"}};
            return a;}    
}
    public int count_user_data(String table,String where){
        try{
            Connection c =db.connect();
            PreparedStatement stmt =c.prepareStatement("select count(*) from "+table+" where "+where);
            ResultSet res=stmt.executeQuery();
            res.next();
            
            return res.getInt(1);
            
        }catch(SQLException ee){
            
            return -999;}    
    }
    public String[][] RegionBills(String Region){
        try{
            Connection c = db.connect();
            PreparedStatement stmt=c.prepareStatement("SELECT b.meter_code,b.total_bill,b.bill_date,o.region from bill b join old_customer o on o.meter_code=b.meter_code where region='"+Region+"' ORDER by bill_date,meter_code LIMIT 20");
            ResultSet res=stmt.executeQuery();
            String[][] R_bills=new String[20][4];
            int k=0;
            while(res.next()){
                for (int i = 1; i <= 4; i++) {
                    R_bills[k][i-1]=res.getString(i);
                }
                k++;
            }
            return R_bills;
        }
        catch(SQLException ee){
            String[][] s={{"-999","-999"}};
            return s;
        }
    }
    /*get id for the new_customer*/
    public int get_id(){
       try{
           Connection c = db.connect();
           PreparedStatement stmt=c.prepareStatement("Select max(id) from new_customer");
           ResultSet res=stmt.executeQuery();
           res.next();
           return res.getInt(1);
       }catch(SQLException ee){
           return -999;
       }
    }
    public int get_meter_code(){
       try{
           Connection c = db.connect();
           PreparedStatement stmt=c.prepareStatement("Select max(meter_code) from old_customer");
           ResultSet res=stmt.executeQuery();
           res.next();
           return res.getInt(1);
       }catch(SQLException ee){
           return -999;
       }
    }
    /*get the tariff of each customer depends on his meter_code */
    public   float get_tariff(int meter_code){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select tariff from old_customer where meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            res.next();
            return res.getFloat(1);
        }
        catch(SQLException ee){
            return -999;
        }
    }
    
    public boolean check_in_meter_code(int meter_code){
        try{
            Connection c =db.connect();
            PreparedStatement stmt=c.prepareStatement("select meter_code from old_customer where 1");
            ResultSet res=stmt.executeQuery();
            boolean done=false;
            while(res.next()){
               if(meter_code==res.getInt(1))
                   done=true;
               else continue; 
            }
            return done;
            
        }
        catch(SQLException ee){return false;}
    }
    /*getBill return the last bill has been inserted after inserting the reading*/
    public  int getBill(int meter_code){
        try{
//            if(check_in_meter_code(meter_code)==true)
            {
                Connection c =db.connect();
                PreparedStatement stmt=c.prepareStatement("select total_bill from bill where paid=0 and bill_date in(SELECT max(bill_date) from bill where  meter_code="+meter_code+" and paid=0) and meter_code="+meter_code);
                ResultSet res=stmt.executeQuery();
                res.next();
                int bill=res.getInt(1);
                return bill;
            }
//            else return 0;
        }
        catch(SQLException ee){return -999;}
    }
    public  String getBill_date(int meter_code){
        try{
//            if(check_in_meter_code(meter_code)==true)
            {
                Connection c =db.connect();
                PreparedStatement stmt=c.prepareStatement("SELECT max(bill_date) from bill where paid=0 and meter_code="+meter_code);
                ResultSet res=stmt.executeQuery();
                res.next();
                return res.getString(1);
            }
//            else return "0";
        }
        catch(SQLException ee){return "-999";}
    }
    /*Number of unpaid bills:*/
    public   int NumberUnpaidMonths(int meter_code){
        try{
            Connection c =db.connect();
            PreparedStatement stmt=c.prepareStatement("SELECT count(*) from bill where  paid=0 and meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            res.next();
            return res.getInt(1);
        }
        catch(SQLException ee){return -999;}
    }
    public   int NumberPaidMonths(int meter_code){
        try{
            Connection c =db.connect();
            PreparedStatement stmt=c.prepareStatement("select count(bill_date) from bill where paid=1 and meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            res.next();
            return res.getInt(1);
        }
        catch(SQLException ee){return -999;}
    }
    /*PayBill*/
    public   void PayBill(int meter_code,String bill_date){
        update("bill", "paid", "1", " meter_code="+meter_code+" and bill_date='"+bill_date+"'");
    }
    /*get the all bills in int array for specific region:*/
    public   int[][] RagionBills(String Region,String Bill_date){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select o.meter_code,b.total_bill from bill b join old_customer o on o.meter_code=b.meter_code where o.region='"+Region+"' and bill_date='"+Bill_date+"'");
            ResultSet res=stmt.executeQuery();
            int r_bills[][]=new int[Meter_codes(Region).length][2];
            int i=0;
            while(res.next()){
                r_bills[i][0]=res.getInt(1);
                r_bills[i][1]=res.getInt(2);
                i++;
            }
            return r_bills; 
        }
        catch(SQLException ee){
            int[][] bills=new int[1][1];
            bills[0][0]=-999;
            
            return bills;}   
    }
    private   int[] Meter_codes(String Region){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select count(meter_code) from old_customer where region='"+Region+"'");
            ResultSet res=stmt.executeQuery();
            res.next();
            int[] numbers=new int[res.getInt(1)];
            stmt=c.prepareStatement("select meter_code from old_customer where region='"+Region+"'");
            res=stmt.executeQuery();
            int i=0;
            while(res.next()){
                numbers[i]=res.getInt(1);
                i++;
            }
            return numbers;
        }catch(SQLException ee) {
            int[] numbers=new int[1];
            return numbers;
        }
    }
    /*Adding Complain*/
    public   int Add_complain(int meter_code,String complain_date,String complain,String c_bill_date){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("insert into complains_details (meter_code,complain_date,complain,c_bill_date) values(?,?,?,?)");
            stmt.setInt(1, meter_code);
            stmt.setString(2, complain_date);
            stmt.setString(3,complain);
            stmt.setString(4,c_bill_date);
            stmt.executeUpdate();
            ResultSet res=(c.prepareStatement("select max(id) from complains_details")).executeQuery();
            res.next();;
            int id=res.getInt(1);
            return id;
        }
        catch(SQLException ee){
            return -999;
        }
    }
    /*Adding new customer*/
    public int insert_new_customer(String[] new_customer){
            try{
                    Connection c=db.connect();
                    PreparedStatement stmt=c.prepareStatement("insert into new_customer (city,region,fname,lname,phone,contract_link,registration_date,email) values(?,?,?,?,?,?,?,?)");
                    stmt.setString(1, new_customer[0]);
                    stmt.setString(2, new_customer[1]);
                    stmt.setString(3, new_customer[2]);
                    stmt.setString(4, new_customer[3]);
                    stmt.setString(5, new_customer[4]);
                    stmt.setString(6, new_customer[5]);
                    stmt.setString(7, new_customer[6]);
                    stmt.setString(8, new_customer[7]);
                    stmt.executeUpdate();
                    stmt=c.prepareStatement("select max(id) from new_customer");
                    ResultSet res=stmt.executeQuery();
                    res.next();
                    return res.getInt(1);
                }
            catch(SQLException ee){
                    return -999;
                }
            
    }
    public int insert_user(String username,String password,String type){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("insert into employee(username,password,type) values(?,?,?)");
            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.setString(3, type);
            stmt.executeUpdate();
            stmt=c.prepareStatement("select max(id) from employee");
            ResultSet res= stmt.executeQuery();
            res.next();
            return res.getInt(1);
        }catch(SQLException e){
        return -999;}
    }
        
    
    /*{statistics over a year:Max Consumption,Mean,Min,Count(meter_code),total(consumption)} */
    public   int[] region_statistics(String Region){
            try{
                int[] stat=new int[6];
                Connection c =db.connect();
                PreparedStatement stmt=c.prepareStatement("select count(DISTINCT(mr.meter_code)) number_of_meters,SUM(mr.reading) Total_Reading,AVG(mr.reading) mean,max(mr.reading) Maximum_Reading,min(mr.reading) Minimum_Reading,count(mr.reading) from meter_reading mr join old_customer o on o.meter_code=mr.meter_code where o.region='"+Region+"'");
                ResultSet res=stmt.executeQuery();
                res.next();
                for (int i = 0; i < stat.length; i++) {
                    stat[i]=res.getInt(i+1);
                }
                return stat;
            }catch(SQLException ee){
                int[] stat={-999};
                return stat;
            }
            
    }
    /*return {{meter_code,reading,real_reading},{meter_code,reading,real_reading},...} --> of specific region and date_of_reading*/
    public   String[][] reading_validation(int meter_code){
        try{
            Connection c =db.connect();
            PreparedStatement stmt =c.prepareStatement("select * from meter_reading WHERE meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            String[][] R_bills=new String[20][4];
            int k=0;
            while(res.next()){
                for (int i = 1; i <= 4; i++) {
                    R_bills[k][i-1]=res.getString(i);
                }
                k++;
            }
            return R_bills;
            
        }catch(SQLException ee){
            String[][] a={{"-999","-999"}};
            return a;
        }
    }
    
    /*make the subscription stop or start (meter_code,false)-->stop,(meter_code,true)-->start */
    public   void sub(int meter_code,Boolean k){
        if(k==false){
            update("old_customer","subscription","0","meter_code="+String.valueOf(meter_code));}
        if(k==true){
            update("old_customer","subscription","1","meter_code="+String.valueOf(meter_code));}
    }
    public   String[][] Collected_Bills(int meter_code){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select meter_code,total_bill,bill_date from bill where paid=1 and meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            int size=count_user_data("bill", "paid=1 and meter_code="+meter_code);
            String c_bills[][]=new String[size][3];
            int i=0;
            while(res.next()){
                if(i<size){
                    c_bills[i][0]=res.getString(1);
                    c_bills[i][1]=res.getString(2);
                    c_bills[i][2]=res.getString(3);
                i++;
                }
            }
            return c_bills;
        }
        catch(SQLException ee){
            String[][] bills={{"-999","-999"}};
            
            return bills;}   
    }
    
    public void update(String Table,String col,String n_val,String Where){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("update "+Table+" set "+col+"='"+n_val+"' where "+Where);
            
            stmt.executeUpdate();
            System.out.println(Table+" has been Updated");

        }
        catch(SQLException ee){
            System.out.println("Error: "+ee.getMessage());
        }
    }
    public int update_for_user(int id,String column,String value){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("update employee set "+column+"='"+value+"' where id="+id);
            stmt.executeUpdate();
            return 1;
        }
        catch(SQLException ee){
            return -999;
        }
    }
    public void Delete(String Table,String Where){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("delete from "+Table+" where "+Where);
            stmt.executeUpdate();
            System.out.println("Deleted");
        }
        catch(SQLException ee){
            System.out.println("Error: "+ee.getMessage());
        }
    }

    public String insert_old_customer(String region,String email){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("insert into old_customer (region,email) values(?,?)");
            stmt.setString(1, region);
            stmt.setString(2, email);
            stmt.executeUpdate();
            System.out.println("customer with "+region+", "+email+" has been inserted");
            return "customer with "+region+", "+email+" has been inserted\nAnd his meter_code Is: "+get_meter_code();
        }
        catch(SQLException ee){
            System.out.println("Error: "+ee.getMessage());
            return "Error: "+ee.getMessage();
        }
    }
    
    public String update_customer(int meter_code,String col,String value,String where){
        this.update("old_customer", col, value, "meter_code="+meter_code+" and "+where);
        return "column "+col+" updated it's value to "+value+" where the meter_code is "+meter_code;
    }

    public int get_paid_bills(int meter_code){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select sum(total_bill) from bill where paid=1 and meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            return res.getInt(1);
        }catch(SQLException ee){
            return 0;
        }
    }
    public String c_bill_date(int meter_code){
        try{
            Connection c= db.connect();
            PreparedStatement stmt=c.prepareStatement("select max(bill_date) from bill where meter_code="+meter_code+" and paid=0");
            ResultSet res= stmt.executeQuery();
            res.next();
            return res.getString(1);
        }
        catch(SQLException ee)
        {return "-999";}
    }
    public int money_collected(int meter_code){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select sum(total_bill) from bill where paid=1 and meter_code="+meter_code);
            ResultSet res=stmt.executeQuery();
            res.next();
            return res.getInt(1);
        }catch(SQLException e){
        return -999;}
    }
    public int Money_Collected_Region(String Region){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select sum(total_bill) from bill b join old_customer o on o.meter_code=b.meter_code where b.paid=1 and o.region='"+Region+"'");
            ResultSet res=stmt.executeQuery();
            res.next();
            return res.getInt(1);
        }catch(SQLException e){
        return -999;}
    }
    public String[][] RegionBillsCollected(String Region){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select b.meter_code,b.total_bill,b.bill_date from bill b join old_customer o on o.meter_code=b.meter_code where o.region='"+Region+"' and b.paid=1");
            ResultSet res=stmt.executeQuery();
            String r_bills[][]=new String[count_user_data("bill b join old_customer o on o.meter_code=b.meter_code", "b.paid=1 and o.region="+"'"+Region+"'")][4];
            int i=0;
            while(res.next()){
                r_bills[i][0]=res.getString(1);
                r_bills[i][1]=res.getString(2);
                r_bills[i][2]=res.getString(3);
                r_bills[i][3]=Region;

                i++;
            }
            return r_bills; 
        }
        catch(SQLException ee){
            String bills[][]={{"-999","-999","-999"}};
            return bills;}  
    }
    public String[][] Total_bills(String Region){
    try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("select b.meter_code,b.total_bill,b.bill_date,b.paid from bill b join old_customer o on o.meter_code=b.meter_code where o.region='"+Region+"'");
            ResultSet res=stmt.executeQuery();
            String r_bills[][]=new String[count_user_data("bill b join old_customer o on o.meter_code=b.meter_code", "o.region="+"'"+Region+"'")][5];
            int i=0;
            while(res.next()){
                r_bills[i][0]=res.getString(1);
                r_bills[i][1]=res.getString(2);
                r_bills[i][2]=res.getString(3);
                r_bills[i][3]=Region;
                r_bills[i][4]=res.getString(4);
                i++;
            }
            return r_bills; 
        }
        catch(SQLException ee){
            String bills[][]={{"-999","-999","-999"}};
            return bills;}  
}
    public int RandomMethod(int min, int max) {
        return (int) ((Math.random() * (max - min)) + min);
    }
    private void insert_bill(int meter_code,String bill_date,int bill){
        try{
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("insert into bill (meter_code,bill_date,total_bill) values(?,?,?)");
            stmt.setInt(1, meter_code);
            stmt.setString(2, bill_date);
            stmt.setInt(3,bill);
            stmt.executeUpdate();
            System.out.println(meter_code+"'s bill has been inserted");
        }
        catch(SQLException ee){
            System.out.println("Error: "+ee.getMessage());
        }
    }
    public void insert_meter_reading(int meter_code,String reading_date,int reading){
        try{
            
            if(get_tariff(meter_code)!=-999){
            insert_bill(meter_code, reading_date,(int)(reading*get_tariff(meter_code)));
            Connection c=db.connect();
            PreparedStatement stmt=c.prepareStatement("insert into meter_reading (meter_code,reading_date,reading,real_reading)  values(?,?,?,?)");
            stmt.setInt(1, meter_code);
            stmt.setString(2, reading_date);
            stmt.setInt(3,reading);
            stmt.setInt(4,reading-RandomMethod(-10, 10));
            stmt.executeUpdate();
            System.out.println(meter_code+"'s reading has been inserted");}
            else {System.out.println("traiff_error");}
        }
        catch(SQLException ee){
            System.out.println("Error: "+ee.getMessage());
        }
    }
}
