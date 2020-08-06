//___FILEHEADER___

import Foundation
import MVVMRB

class ___VARIABLE_productName:identifier___BuilderDependency: Component<___VARIABLE_productName:identifier___DependencyProtocol>, ___VARIABLE_productName:identifier___ViewControllerDependencyProtocol, ___VARIABLE_productName:identifier___ViewModelDependencyProtocol, ___VARIABLE_productName:identifier___RouterDependencyProtocol {
}

final class ___VARIABLE_productName:identifier___Builder: Builder<___VARIABLE_productName:identifier___DependencyProtocol> {
    func build() -> ___VARIABLE_productName:identifier___ViewControllerProtocol? {
        guard let dependency = dependency else { return nil }
        
        let component = ___VARIABLE_productName:identifier___BuilderDependency(dependency: dependency)
        let viewModel = ___VARIABLE_productName:identifier___ViewModel(dependency: component)
        let router = ___VARIABLE_productName:identifier___Router(dependency: component, viewModel: viewModel)
        let viewController = ___VARIABLE_productName:identifier___ViewController(dependency: component, viewModel: viewModel, router: router)
        return viewController
    }
}
