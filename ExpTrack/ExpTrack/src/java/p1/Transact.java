package p1;

import java.time.LocalDate;


public class Transact 
{
    private int trans_id;
    private String user_name,type;
    private LocalDate trans_date;   // = LocalDate.now();
    private double amt;
    private double balance;
    
    public Transact()
    {
        
    }

    public int getTrans_id() {
        return trans_id;
    }

    public void setTrans_id(int trans_id) {
        this.trans_id = trans_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public LocalDate getTrans_date() {
        return trans_date;
    }

    public void setTrans_date(LocalDate trans_date) {
        this.trans_date = trans_date;
    }

    public double getAmt() {
        return amt;
    }

    public void setAmt(double amt) {
        this.amt = amt;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    
    
    @Override
    public String toString() {
        return "Transact{" + "trans_id=" + trans_id + ", user_name=" + user_name + ", type=" + type + ", trans_date=" + trans_date + ", amt=" + amt + '}';
    }
    
    
            
}
