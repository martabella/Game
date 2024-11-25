struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    
    mutating func points(sliderValue:Int){
        self.points = 100-abs(sliderValue-target)
    }
    
    mutating func restart(){
        self.target = Int.random(in: 1...100)
    }
}
