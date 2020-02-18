package bean;

public class userData {          

        private String Name ;
        private String Num ;

        public  void setUserName(String name){
            Name = name ;
        }
        public void setUserNum(String num){
            Num=num;
        }
        public String getUserName(){
            return Name;
        }
        public String getUserNum(){
            return Num;
        }    
}
