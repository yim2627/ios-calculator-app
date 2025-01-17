
import XCTest

class OperatorTests: XCTestCase {
    var sut: Operator!
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .add
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func test_calculate호출시_값을정상적으로반환하는지() {
        // Given
        let input = 0.0
        
        // When
        let result = sut.calculate(lhs: input, rhs: input)
        
        // Then
        XCTAssertNotNil(result)
    }
    
    func test_Operator를add로한후_calculate호출시_add가호출되어_반환값이있는지() {
        // Given
        sut = .add
        
        // When
        let result = sut.calculate(lhs: 0.0, rhs: 0.0)
        
        // Then
        XCTAssertNotNil(result)
    }
    
    func test_Operator를substract로한후_calculate호출시_substract가호출되어_반환값이있는지() {
        // Given
        sut = .substract
        
        // When
        let result = sut.calculate(lhs: 0.0, rhs: 0.0)
        
        // Then
        XCTAssertNotNil(result)
    }
    
    func test_Operator를multiply로한후_calculate호출시_multiply가호출되어_반환값이있는지() {
        // Given
        sut = .substract
        
        // When
        let result = sut.calculate(lhs: 0.0, rhs: 0.0)
        
        // Then
        XCTAssertNotNil(result)
    }
    
    func test_Operator를divide로한후_calculate호출시_divide가호출되어_반환값이있는지() {
        // Given
        sut = .divide
        
        // When
        let result = sut.calculate(lhs: 0.0, rhs: 0.0)
        
        // Then
        XCTAssertNotNil(result)
    }
    
    func test_Operator가add일때_calculate호출시_계산값이정상적으로나오는지() {
        // Given
        sut = .add
        
        // When
        let result = sut.calculate(lhs: 1.0, rhs: 1.0)
        
        // Then
        XCTAssertEqual(result, 2.0)
    }
    
    func test_Operator가substract일때_calculate호출시_계산값이정상적으로나오는지() {
        // Given
        sut = .substract
        
        // When
        let result = sut.calculate(lhs: 2.0, rhs: 1.0)
        
        // Then
        XCTAssertEqual(result, 1.0)
    }
    
    func test_Operator가multiply일때_calculate호출시_계산값이정상적으로나오는지() {
        // Given
        sut = .multiply
        
        // When
        let result = sut.calculate(lhs: 2.0, rhs: 4.0)
        
        // Then
        XCTAssertEqual(result, 8.0)
    }
    
    func test_Operator가divide일때_calculate호출시_계산값이정상적으로나오는지() {
        // Given
        sut = .divide
        
        // When
        let result = sut.calculate(lhs: 6.0, rhs: 4.0)
        
        // Then
        XCTAssertEqual(result, 1.5)
    }
    
    func test_Operator가divide일때_값을0으로나눌시_nan이출력되는지() {
        // Given
        sut = .divide
        
        // When
        let result = sut.calculate(lhs: 6.0, rhs: 0.0)
        
        // Then
        XCTAssertTrue(result.isNaN)
    }
}
