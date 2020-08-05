


class hiker {
        constructor(currentHeight, numSteps, seq) {
                hiker.currentHeight = currentHeight;
                hiker.numSteps = numSteps;
                hiker.seq = seq.split('');
                hiker.mountains = 0;
                hiker.valleys = 0;

        }

        move() {

            while (this.seq.length>1) { 
                    let l = this.seq.splice(0,1)[0];
                    console.log(l);
                    if(l=="U") {
                            if(this.currentHeight==-1) this.valleys+=1;
                            this.currentHeight+=1;
                    } else {
                            if(this.currentHeight==1) this.mountains+=1;
                            this.currentHeight+=1;
                    }
            }
        }

}


let gary = new hiker(0, 9, "UDDDUDUU");
gary.move();
