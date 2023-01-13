import UIKit

protocol HomeCoordinatorDelegate: NSObjectProtocol {
}

class HomeCoordinator: BaseCoordinator {

    //----------------------------------------
    // MARK:- Initialization
    //----------------------------------------

    init(homeViewController: HomeViewController) {
        homeViewController.viewModel = HomeViewModel()

        self.homeViewController = homeViewController
    }

    //----------------------------------------
    // MARK:- Delegate
    //----------------------------------------

    weak var delegate: HomeCoordinatorDelegate?

    //----------------------------------------
    // MARK:- Starting flows
    //----------------------------------------

    func start() {
        self.homeViewController.delegate = self
    }

    //----------------------------------------
    // MARK:- Internals
    //----------------------------------------

    private let homeViewController: HomeViewController
}

//----------------------------------------
// MARK:- HomeViewController delegate
//----------------------------------------

extension HomeCoordinator: HomeViewControllerDelegate {

    func homeViewControllerDidSelectSearchArticle(_ homeViewController: HomeViewController) {
        
    }

    func homeViewControllerDidSelectMostViewed(_ homeViewController: HomeViewController) {
        showArticleListing(activeViewController: homeViewController, articleListingContentType: .mostViewed)
    }

    func homeViewControllerDidSelectMostShared(_ homeViewController: HomeViewController) {
        showArticleListing(activeViewController: homeViewController, articleListingContentType: .mostShared)
    }

    func homeViewControllerDidSelectMostEmailed(_ homeViewController: HomeViewController) {
        showArticleListing(activeViewController: homeViewController, articleListingContentType: .mostEmailed)
    }
}