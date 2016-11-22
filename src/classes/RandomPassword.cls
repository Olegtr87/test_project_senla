public class RandomPassword {

    Integer lenghtPassword;
    
    public RandomPassword(Integer lenghtPassword){ 
        this.lenghtPassword=lenghtPassword;
    }
    
    private Integer getRandomStringS(Integer randomNum) {    	
        if (randomNum==0) return (Integer)(Math.random()*9+48);
        	else if (randomNum==1) return (Integer)(Math.random()*25+65);
        		else return (Integer)(Math.random()*25+97);        
	}
    
    
    public String generatePass() {  		
        String pass = '';
        try {
        	for (Integer i = 0; i < lenghtPassword; i++){
        	    Integer randomNumberSymbol = getRandomStringS((Integer)(Math.random()*3) );
        		pass = pass + String.valueOf(String.fromCharArray( new integer[] { randomNumberSymbol }));}
        	return pass; 
        }
        
        catch(Exception e){
            return '';
        }        
	}
    
}