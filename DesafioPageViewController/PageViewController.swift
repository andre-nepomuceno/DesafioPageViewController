//
//  PageViewController.swift
//  DesafioPageViewController
//
//  Created by André N. dos Santos on 13/05/22.
//

import UIKit

class PageViewController: UIPageViewController {

    var listaDeTelas: [UIViewController?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let telaSoma = storyboard?.instantiateViewController(withIdentifier: "somaViewController")
        let telaSubtrai = storyboard?.instantiateViewController(withIdentifier: "subtraiViewController")
        
        listaDeTelas.append(telaSoma)
        listaDeTelas.append(telaSubtrai)
        
        dataSource = self
        
        setViewControllers([listaDeTelas[0]!], direction: .forward, animated: true)
    }
}
extension PageViewController: UIPageViewControllerDataSource {
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return listaDeTelas.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = listaDeTelas.firstIndex(of: viewController) else { return nil }
        if index <= 0 { return nil }
        return listaDeTelas[index - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = listaDeTelas.firstIndex(of: viewController) else { return nil }
        if index >= listaDeTelas.count - 1 { return nil }
        return listaDeTelas[index + 1]
    }
}
