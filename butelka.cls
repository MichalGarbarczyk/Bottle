public  class butelka {
public Integer bottleNumber;
public Integer howManyLiters;
public Integer capacity;

public butelka(){
    
}

public butelka( Integer bottleNumber, Integer howManyLiters, Integer capacity) {
    
    this.bottleNumber = bottleNumber;
    this.howManyLiters = howManyLiters;
    this.capacity = capacity;
}

public  void  pourIn (Integer quantity){
    boolean trueOrFalse = checkTheCapacity(capacity, quantity);
    if(trueOrFalse==false){
    
    }else {
        this.howManyLiters  += quantity;
    }
}

public void pourOut (Integer quantity){
    
    if(howManyLiters<quantity){
        
        System.debug('W butelce jest mniej wody niż próbujesz przelać ');
        
    } else {
        
        this.howManyLiters  -= quantity;
    }
    

}

public void overflow (Integer quantity, butelka  whichBottleToPour ){

    Boolean trueOrFalse = checkTheCapacity(capacity, quantity);
    Integer sumOfLitersAndQuantity = whichBottleToPour.howManyLiters + quantity;
    
    
    if(whichBottleToPour.capacity <=quantity || whichBottleToPour.capacity<sumOfLitersAndQuantity){
        System.debug('Pojemność butelki wynosi' +' '+ this.capacity+' '+ ' w butelce jest już'+ ' '+this.howManyLiters+' '+'a ty chcesz nalać'+' '+ quantity );
    }else {
        this.pourOut(quantity);
        whichBottleToPour.pourIn(quantity);
    }
        
}

public  Boolean checkTheCapacity (Integer capacity, Integer quantity){
    if(this.capacity <= quantity || this.howManyLiters >= this.capacity){
        System.debug('Pojemność butelki wynosi' +' '+ this.capacity+' '+ ' w butelce jest już'+ ' '+this.howManyLiters+' '+'a ty chcesz nalać'+' '+ quantity );
        return false ;
    }else {
        return true;
    }
}

}

