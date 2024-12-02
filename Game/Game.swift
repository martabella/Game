struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var rounds = 0
    
    mutating func points(sliderValue:Int){
        self.points = 100-abs(sliderValue-target)
        self.score+=self.points
        self.rounds+=1
    }
    
    mutating func restart(){
        self.target = Int.random(in: 1...100)
    }
    
    mutating func restartGame(){
        self.score = 0
        self.rounds = 0
        self.target = Int.random(in: 1...100)
    }
}
