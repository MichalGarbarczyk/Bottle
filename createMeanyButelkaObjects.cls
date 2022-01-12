public  class createMeanyButelkaObjects {
Integer howManyBottleToCreate ;
public static Integer bottleNumber=0;

public static void createMoreBottleObjects (Integer howManyBottleToCreate){

        List<butelka> bottleObjectsList = new List <butelka>();
        
            for(Integer i=0; i< howManyBottleToCreate; i++){
                Integer newBottleNumber = bottleNumber++;
                butelka myBootle = new butelka(newBottleNumber, i+5,i+3*3);
                bottleObjectsList.add(myBootle);
        
        }
        System.debug( bottleObjectsList);

        

    for(butelka bott:bottleObjectsList){
        
        if(bott.bottleNumber == 0){
            System.debug('jestem numer 0');
            
            
            
        }else if(bott.bottleNumber == 1){
            butelka getThisBottleFromList = bottleObjectsList.get(2);
            System.debug('jestem numer 1');
            bott.overflow(1,getThisBottleFromList);
           
        }else if(bott.bottleNumber==2) {
            System.debug('jestem numer 2');
            
        }else {
            butelka getThisBottleFromList= bottleObjectsList.get(0);
            bott.overflow(5,getThisBottleFromList);
            System.debug('jestem numer 3');
            
        }
    }
    System.debug( bottleObjectsList);
}

}
