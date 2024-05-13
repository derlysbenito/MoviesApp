//
//  HomeRouterTest.swift
//  DemoAppTests
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import XCTest
@testable import DemoApp

final class HomeRouterTest: XCTestCase {
    var sut : HomeRouter!
    var navigateMenuModule = false
    
    override func setUp() {
        super.setUp()
        sut = HomeRouter(coordinator: nil)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testGivenNavigate_WhenToMenuModule_ThenSucess(){
        //Given
        navigateMenuModule = true
        let model = ResultsResponse(imageMovie: "", posterPath: "", title: "", rating: 0, releaseDate: "", overview: "")
        
        //When
        sut.navigateToDetailModule(movie: model)
        
        //Then
        XCTAssertTrue(navigateMenuModule, "Navegación exitosa")
    }
    
    func testGivenNavigate_WhenToMenuModule_ThenError(){
        //Given
        navigateMenuModule = false
        let model = ResultsResponse(imageMovie: "", posterPath: "", title: "", rating: 0, releaseDate: "", overview: "")
        
        //When
        sut.navigateToDetailModule(movie: model)
        
        //Then
        XCTAssertFalse(navigateMenuModule, "Error en la navegación")
    }
    
}
