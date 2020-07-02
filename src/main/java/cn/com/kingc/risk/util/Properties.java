package cn.com.kingc.risk.util;

public class Properties {
       public String getProperty(String key){
    	  java.util.Properties pps = new java.util.Properties();
    	  System.out.println(this.getClass().getClassLoader().getResource(".").getPath());
    	  try {
			pps.load(this.getClass().getClassLoader().getResourceAsStream("resource.properties"));
			 String value = pps.getProperty(key);
			 return value;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
       }
}
