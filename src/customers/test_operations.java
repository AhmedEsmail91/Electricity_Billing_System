//package customers;
//import java.sql.*;
//
//public class  test_operations {
//    public int RandomMethod(int min, int max) {
//        return (int) ((Math.random() * (max - min)) + min);
//    }
//    All_Roles r =new All_Roles();
//    public test_operations(){
//    }
//    /*Columns_Name*/
//    public String[] Columns(String Table){
//        try{
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("select * from "+Table);
//            ResultSet rs =  stmt.executeQuery();
//            ResultSetMetaData rsmd = rs.getMetaData();
//            int columnCount = rsmd.getColumnCount();
//            String cols[]=new String[columnCount];
//            for (int i = 1; i <= columnCount; i++ ) {
//                cols[i-1]= rsmd.getColumnName(i);
//            }
//            return cols;
//        }
//        catch(SQLException ee){
//            String ss[]={("Error: "+ee.getMessage())};
//            return ss;
//        }
//    }
//    /*insertion*/
//    public void insert_old_customer(String region,String email){
//        try{
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("insert into old_customer (region,email) values(?,?)");
//            stmt.setString(1, region);
//            stmt.setString(2, email);
//            stmt.executeUpdate();
//            System.out.println("customer with "+region+", "+email+" has been inserted");
//        }
//        catch(SQLException ee){
//            System.out.println("Error: "+ee.getMessage());
//        }
//    }
//    private void insert_bill(int meter_code,String bill_date,int bill){
//        try{
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("insert into bill (meter_code,bill_date,total_bill) values(?,?,?)");
//            stmt.setInt(1, meter_code);
//            stmt.setString(2, bill_date);
//            stmt.setInt(3,bill);
//            stmt.executeUpdate();
//            System.out.println(meter_code+"'s bill has been inserted");
//        }
//        catch(SQLException ee){
//            System.out.println("Error: "+ee.getMessage());
//        }
//    }
//    public void insert_meter_reading(int meter_code,String reading_date,int reading){
//        try{
//            
//            if(r.get_tariff(meter_code)!=-999){
//            insert_bill(meter_code, reading_date,(int)(reading*r.get_tariff(meter_code)));
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("insert into meter_reading (meter_code,reading_date,reading,real_reading)  values(?,?,?,?)");
//            stmt.setInt(1, meter_code);
//            stmt.setString(2, reading_date);
//            stmt.setInt(3,reading);
//            stmt.setInt(4,reading-RandomMethod(-10, 10));
//            stmt.executeUpdate();
//            System.out.println(meter_code+"'s reading has been inserted");}
//            else {System.out.println("traiff_error");}
//        }
//        catch(SQLException ee){
//            System.out.println("Error: "+ee.getMessage());
//        }
//    }
//    public void insert_complains(int meter_code,String complain_date,String complain){
//        try{
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("insert into bill (meter_code,) values(?,?,?)");
//            stmt.setInt(1, meter_code);
//            stmt.setString(2, complain_date);
//            stmt.setString(3,complain);
//            stmt.executeUpdate();
//            System.out.println(meter_code+"'s reading has been inserted");
//        }
//        catch(SQLException ee){
//            System.out.println("Error: "+ee.getMessage());
//        }
//    }
//    public void insert_new_customer(String[] new_customer){
//        /*
//         * NewCustomer.length=6
//         */
//        //The new_customer array must be like this:
//        /*{city,region,fname,lname,phone,contract_link,registration_date} */
//        if(new_customer.length==6){
//            try{
//                Connection c=db.connect();
//                PreparedStatement stmt=c.prepareStatement("insert into bill (region,fname,lname,phone,contract_link,registration_date) values(?,?,?,?,?,?)");
//                int p=1;
//                for (String string : new_customer) {
//                    stmt.setString(p, string);
//                    p++;
//                }
//                stmt.executeUpdate();
//                System.out.println("new customer has been added");
//            }
//            catch(SQLException ee){
//                System.out.println("Error: "+ee.getMessage());
//            }
//        }
//        else 
//            System.out.println("fields number invalid");
//    }
//    /*Updates*/
//    public void update(String Table,String col,String n_val,String Where){
//        try{
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("update "+Table+" set "+col+"='"+n_val+"' where "+Where);
//            
//            stmt.executeUpdate();
//            System.out.println(Table+" has been Updated");
//
//        }
//        catch(SQLException ee){
//            System.out.println("Error: "+ee.getMessage());
//        }
//    }
//    /*Delete*/
//    public void Delete(String Table,String Where){
//        try{
//            Connection c=db.connect();
//            PreparedStatement stmt=c.prepareStatement("delete from "+Table+" where "+Where);
//            stmt.executeUpdate();
//            System.out.println("Deleted");
//        }
//        catch(SQLException ee){
//            System.out.println("Error: "+ee.getMessage());
//        }
//    }
//    
//}
