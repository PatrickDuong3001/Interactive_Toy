%This program file will tell the toy how to work.
%Switch and photoresistor are the main parts that control other parts of
%the toy. 
%Created by Patrick Duong. 
%INTERACTIVE TOY ASSIGNMENT

sensorPin = 'A0';
bluePin = 'D13';
redPin = 'D12';
speakerPin = 'D6';

switchPin = 'A1';
switchValue = readVoltage(a,switchPin);

clear s
s = servo(a, 'D9', 'MinPulseDuration', 400*10^-6, 'MaxPulseDuration', 2100*10^-6);

threshold = 3.5;
  
while(1)
   
    writeDigitalPin(a,bluePin,0);
    writeDigitalPin(a,redPin,0); 
    
    lightVal = readVoltage(a,sensorPin);
    if switchValue == 5
        while lightVal < threshold
            writeDigitalPin(a,redPin,1);
            writeDigitalPin(a,bluePin,1); 
        
            playSong(a, speakerPin,'g', 2);   
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold 
                break; 
            end    
        
            playSong(a, speakerPin,'g', 1);  
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold 
                break; 
            end    
        
            playSong(a, speakerPin,'a', 4);   
            writePosition(s,1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'g', 4); 
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'C', 4);     
            writePosition(s,1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold 
                break; 
            end    
        
            playSong(a, speakerPin,'b', 4);  
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    

            playSong(a, speakerPin,' ', 2);  
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'g', 2);   
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'g', 1);   
            writePosition(s,0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'a', 4);     
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold 
                break; 
            end    
        
            playSong(a, speakerPin,'g', 4);   
            writePosition(s,0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'D', 4);     
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'C', 4);  
            writePosition(s,0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,' ', 2);  
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'g', 2);  
            writePosition(s,1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'g', 1); 
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'G', 4);  
            writePosition(s,1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'E', 4);
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
                break; 
            end    
        
            playSong(a, speakerPin,'C', 4);  
            writePosition(s,1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,'b', 4); 
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,'a', 6);  
            writePosition(s,1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,' ', 2);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold 
               break; 
            end    

            playSong(a, speakerPin,'F', 2); 
            writePosition(s,0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,'F', 1);  
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold 
               break; 
            end    

            playSong(a, speakerPin,'E', 4);    
            writePosition(s,0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,'C', 4);   
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,'D', 4);   
            writePosition(s, 0);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            playSong(a, speakerPin,'C', 6);    
            writePosition(s, 1);
            lightVal = readVoltage(a,sensorPin);
            if lightVal > threshold
               break; 
            end    

            lightVal = readVoltage(a,sensorPin);
        end
    end
    switchValue = readVoltage(a,switchPin);
end

function playSong(a, pin, note, beats)

noteVector = 'cdefgabCDEFGAB '; 
frequencyVector = [131, 147, 165, 175, 196, 220, 247, 262, 294, 330, 349, 392, 440, 494, 0];

beatDuration = 0.12; 
freqPlay = frequencyVector(noteVector == note); 

playTone(a, pin, freqPlay, beats*beatDuration) 
pause(beats*beatDuration) 
pause(0.05);
end
