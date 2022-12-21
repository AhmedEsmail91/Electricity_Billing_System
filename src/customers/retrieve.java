package customers;
import java.sql.*;
public class retrieve {
    private String where;
    private String Table;
    private String[] columns;
    
    public retrieve(String table,String where ) {
        this.where = where;
        Table = table;
        columns=null;
    }

    public retrieve( String table, String[] columns,String where) {
        this.where = where;
        Table = table;
        this.columns = columns;
    }
    
    public void SelectOneTable(){
        try{
            Connection c=db.connect();
        if(columns==null){
            PreparedStatement stmt=c.prepareStatement("select * from "+Table+" where "+where);
            ResultSet res=stmt.executeQuery();
            ResultSetMetaData rsmd = res.getMetaData();
            int columnCount = rsmd.getColumnCount();
            String cols[]=new String[columnCount];
            // The column count starts from 1
            for (int i = 1; i <= columnCount; i++ ) {
                cols[i-1]= rsmd.getColumnName(i).toUpperCase();
            // Do stuff with name
            }
            for (int i = 1; i <= cols.length; i++) {
                System.out.format("%29s",cols[i-1]);
            }
            System.out.println("\n");
            while(res.next()){
                for (int i = 1; i <= columnCount; i++) {
                    System.out.format("%29s",res.getString(i));
                }
                System.out.println("\n");
            }
        }
        else{
            String joined=String.join(",", columns);
            PreparedStatement stmt=c.prepareStatement("select "+joined+" from "+Table+" where "+where);
            ResultSet res=stmt.executeQuery();
            ResultSetMetaData rsmd = res.getMetaData();
            int columnCount = rsmd.getColumnCount();
            String cols[]=new String[columnCount];
            // The column count starts from 1
            for (int i = 1; i <= columnCount; i++ ) {
                cols[i-1]= rsmd.getColumnName(i).toUpperCase();
            // Do stuff with name
            }
            for (int i = 1; i <= cols.length; i++) {
                System.out.format("%18s",cols[i-1]);
            }
            System.out.println("\n");
            while(res.next()){
                for (int i = 1; i <= columns.length; i++) {
                    System.out.format("%17s",res.getString(i));
                }
                System.out.println("\n");
            }
        }
    }
        catch(SQLException ee)
        {
            System.out.println("Error: "+ee.getMessage());
        }
    }
}
