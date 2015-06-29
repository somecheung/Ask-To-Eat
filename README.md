# Ask-To-Eat
### Whether or not I've eaten –it doesn't matter because to them I will always need to eat.
 
 1. They haven't asked yet today and I might or might not have eaten. :expressionless:
 ```
 boolean askToEat;
 ```
 
 2. If they haven't asked yet, they will ask if I want to eat. :unamused:
 ```
 if (!askToEat ) {
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(question, width/2, height/3);
    text(response[randomResponse], width/2, 2*height/3);
    askToEat = true;
 }
 ```
 
 3. If they have asked –it doesn't matter, they will still ask if I want to eat. :grimacing:
  ```
  if (askToEat) {
    textFont(f, 36);
    fill(0);
    textAlign(CENTER);
    text(question, width/2, height/3);
    text(response[randomResponse], width/2, 2*height/3);
    askToEat = false;
  }
  ```
 
 4. They will ask me if I want to eat, whether or not they asked me previously. :persevere:

 

