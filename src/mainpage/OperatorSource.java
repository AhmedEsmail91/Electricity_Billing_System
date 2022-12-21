/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mainpage;
import customers.All_Roles;

/**
 *
 * @author Ahmed
 */
public class OperatorSource extends All_Roles{
    public int getBill(int meterCode){
        return super.getBill(meterCode);
    }
    public String update_customer(int meterCode,String col,String value,String where){
        return super.update_customer(meterCode, col, value, where);
    }
    public String[][]reading_validation(int meterCode){
        return super.reading_validation(meterCode);
    }
    public String[][] Collected_Bills(int meterCode){
        return super.Collected_Bills(meterCode);
    }
    public int money_collected(int meterCode){
        return super.money_collected(meterCode);
    }
}
