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
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var planetImg: UIImageView!
    
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
            
            view.addSubview(nextBtn)
            view.addSubview(planetImg)
            nextBtn.isHidden = true
            planetImg.isHidden = true
            
            self.navigationController?.isNavigationBarHidden = true
        }
        
        @IBAction func nextSegue(_ sender: Any) {
     
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
                
                let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
                
                if(percentOffset.x > 0 && percentOffset.x <= 0.33) {
                    nextBtn.isHidden = true
                    planetImg.isHidden = true

                } else if(percentOffset.x > 0.33 && percentOffset.x <= 0.66) {
                    nextBtn.isHidden = true
                    planetImg.isHidden = true

                } else if(percentOffset.x > 0.66 && percentOffset.x <= 0.95) {
                    nextBtn.isHidden = false
                    planetImg.isHidden = true
                    
                } else if(percentOffset.x > 0.95 && percentOffset.x <= 1) {
                    nextBtn.isHidden = false
                    UIView.animate(withDuration: 0.5, delay: 0.5, options: [.autoreverse, .repeat, .allowUserInteraction], animations: {
                            
                    self.slides[2].onboardingButton.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                        }, completion: nil)
                    planetImg.isHidden = false
                }
    }
}
