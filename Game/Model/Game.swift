struct Game{
    private(set) var target = Int.random(in: 1...100)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var rounds = 0
    private(set) var marks = [Mark]()
    
    mutating func points(sliderValue:Int){
        self.points = 100-abs(sliderValue-target)
        self.score+=self.points
        self.rounds+=1
        self.marks.append(Mark(value: self.points))
        marks.sort(by: { $0.value > $1.value })
    }
    
    mutating func restart(){
        self.target = Int.random(in: 1...100)
    }
    
    mutating func restartGame(){
        self.score = 0
        self.rounds = 0
        self.target = Int.random(in: 1...100)
    }
    
    static let marksDefault = [Mark(value: 30), Mark(value: 40)]
}
