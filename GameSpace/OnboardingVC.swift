//
//  ViewController.swift
//  GameSpace
//
//  Created by Calvin Leonardo on 09/06/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit

class OnboardingVC: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewWillAppear(_ animated: Bool) {
            self.navigationController?.isNavigationBarHidden = true

        }
        var slides:[Slide] = [];
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
           
            
            scrollView.delegate = self
            
           slides = createSlides()
           setupSlideScrollView(slides: slides)
           
           pageControl.numberOfPages = slides.count
           pageControl.currentPage = 0
            view.addSubview(pageControl)
            view.bringSubviewToFront(pageControl)
            
            self.navigationController?.isNavigationBarHidden = true
        }
        
        func createSlides() -> [Slide] {

            let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
            slide1.onboardingTitle.text = "Discover Your Favorite Game"
              slide1.imageView.image = UIImage (named: "app")
            slide1.onboardingDesc.text = "Explore dozens of exciting games and find games that suit your interests"
            slide1.onboardingButton.backgroundColor = .clear

            let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
            slide2.onboardingTitle.text = "Play Exciting Games"
              slide2.imageView.image = UIImage (named: "app2")
            slide2.onboardingDesc.text = "Play games that you like to fill your spare time and release stress"
            slide2.onboardingButton.backgroundColor = .clear

            
            let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
            slide3.onboardingTitle.text = "Let's Challenge Yourself"
              slide3.imageView.image = UIImage (named: "app3")
            slide3.onboardingDesc.text = "Discover the world of gaming according to your interests, skills, and needs"
            slide3.onboardingButton.layer.cornerRadius = 25
            
            return [slide1, slide2, slide3]
        }
        
        func setupSlideScrollView(slides : [Slide]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height - 500)
        scrollView.isPagingEnabled = true
            
            for (i,slide) in slides.enumerated() {
            slide.frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slide)
            }
        }
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
            pageControl.currentPage = Int(pageIndex)
            let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
            let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x
                
            let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
            let currentVerticalOffset: CGFloat = scrollView.contentOffset.y
                
            let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
            let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
                
                
                /*
                 * below code changes the background color of view on paging the scrollview
                 */
        //        self.scrollView(scrollView, didScrollToPercentageOffset: percentageHorizontalOffset)
                
            
                /*
                 * below code scales the imageview on paging the scrollview
                 */
               // let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
                
               // if(percentOffset.x > 0 && percentOffset.x <= 0.25) {
                    
                 //   slides[0].imageView.transform = CGAffineTransform(scaleX: (0.25-percentOffset.x)/0.25, y: (0.25-percentOffset.x)/0.25)
                   // slides[1].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.25, y: percentOffset.x/0.25)
                    
                //} else if(percentOffset.x > 0.25 && percentOffset.x <= 0.50) {
                //slides[1].imageView.transform = CGAffineTransform(scaleX: (0.50-percentOffset.x)/0.25, y: (0.50-percentOffset.x)/0.25)
                  //  slides[2].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.50, y: percentOffset.x/0.50)
                    
                //} else if(percentOffset.x > 0.50 && percentOffset.x <= 0.75) {
                  //  slides[2].imageView.transform = CGAffineTransform(scaleX: (0.75-percentOffset.x)/0.25, y: (0.75-percentOffset.x)/0.25)
                    //slides[3].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.75, y: percentOffset.x/0.75)
                    
                //} else if(percentOffset.x > 0.75 && percentOffset.x <= 1) {
                  //  slides[3].imageView.transform = CGAffineTransform(scaleX: (1-percentOffset.x)/0.25, y: (1-percentOffset.x)/0.25)
                    //slides[4].imageView.transform = CGAffineTransform(scaleX: percentOffset.x, y: percentOffset.x)
                }
    
}

