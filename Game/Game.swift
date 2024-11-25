struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    private(set) var score = 0
    
    mutating func points(sliderValue:Int){
        self.points = 100-abs(sliderValue-target)
        self.score+=self.points
    }
    
    mutating func restart(){
        self.target = Int.random(in: 1...100)
    }
}
