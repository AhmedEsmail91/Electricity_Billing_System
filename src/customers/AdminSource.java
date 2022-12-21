package customers;
public class AdminSource extends All_Roles{
    public int[] region_statistics(String Region){
        return super.region_statistics(Region);
    }
    public String[][] Collected_Bills(int meter_code){
        return  super.Collected_Bills(meter_code);
    }
    public String[][] Total_Bills(String Region){
        return super.Total_bills(Region);
    }
    public String insert_old_customer(String region, String email){
        return super.insert_old_customer(region, email);
    }
    public int get_meter_code(){
        return super.get_meter_code();
    }
    public int insert_user(String username,String password,String type){
        return super.insert_user(username, password, type);
    }
    public void Delete(String Table,String Where){
        super.Delete(Table, Where);
    }
    public String update_customer(int Meter_code,String col,String value,String where ){
        return super.update_customer(Meter_code, col, value, where);
    }
    public int update_for_user(int id,String column,String value){
        return  super.update_for_user(id, column, value);
    }
}
