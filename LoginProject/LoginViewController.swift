//
//  ViewController.swift
//  LoginProject
//
//  Created by Aahir on 09/07/18.
//  Copyright © 2018 Aahir. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var backgroundView = UIView()
    var loginView = UIView()
    var titleLabel = UILabel()
    var loginTextField = UITextField()
    var lineView = UIView()
    var nextButton = UIButton()
    var otpView = UIView()
    var otpTopLabel = UILabel()
    var backButton = UIButton()
    var otpImage = UIImageView()
    var verificationLabel = UILabel()
    var otpTextField = UITextField()
    var otpLineView = UIView()
    var clockImage = UIImageView()
    var countdownLabel = UILabel()
    var verifyButton = UIButton()
    var tncLabel = UILabel()
    var tncButton = UIButton()
    var passwordTextField = UITextField()
    var passwordLineView = UIView()
    var forgotPasswordButton = UIButton()
    var orLabel = UILabel()
    var orLineView1 = UIView()
    var orLineView2 = UIView()
    var useOtpButton = UIButton()
    var fbButton = UIButton()
    var googleButton = UIButton()
    var trueButton = UIButton()
    var socialTitle = UILabel()
    var infoQuestion = UILabel()
    var infoLabel = UILabel()
    var infoButton = UIButton()
    var leftLineView = UIView()
    var rightLineView = UIView()
    var forgotView = UIView()
    var forgotTextField = UITextField()
    var forgotLineView = UIView()
    var resetButton = UIButton()
    var forgotTitleLabel = UILabel()
    var forgotDescLabel = UILabel()
    
    var loginFrame = CGRect()
    var loginPasswordFrame = CGRect()
    var otpFrame = CGRect()
    var forgotPasswordFrame = CGRect()
    
    var blue1 = UIColor(hexString: "3f96ce")
    var blue2 = UIColor(hexString: "346aa0")
    var phoneNumber = ""
    var currentScreen = "LOGIN"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        initialise()
        initLoginView()
        initInfoView()
        initSocialView()
        initForgotPasswordView()
        initOtpView()
        initBackButton()
        setPasswordComponents(alpha: 0.0)
    }

    func initialise() {
        loginFrame = CGRect(x: 25, y: 220, width: self.view.bounds.width - 50, height: self.view.bounds.height*0.3)
        loginPasswordFrame = CGRect(x: 25, y: 100, width: self.view.bounds.width - 50, height: self.view.bounds.height*0.60)
        otpFrame = CGRect(x: 25, y: 100, width: self.view.bounds.width - 50, height: self.view.bounds.height*0.7)
        forgotPasswordFrame = CGRect(x: 25, y: 100, width: self.view.bounds.width - 50, height: self.view.bounds.height*0.4)
        self.hideKeyboardWhenTappedAround()
    }
    
    func initLoginView() {
        backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        backgroundView.applyGradient(colours: [blue1!, blue2!])
        self.view.addSubview(backgroundView)
        
        loginView = UIView(frame: loginFrame)
        loginView.backgroundColor = UIColor.white
        loginView.layer.cornerRadius = 5.0
        loginView.clipsToBounds = true
        self.view.addSubview(loginView)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: loginView.frame.origin.y + 20, width: 50, height: 25))
        titleLabel.center.x = loginView.center.x
        titleLabel.textAlignment = .center
        titleLabel.text = "Login"
        titleLabel.textColor = UIColor(hexString: "333333")
        titleLabel.font = UIFont(name: "Roboto-Light", size: 18.0)
        self.view.addSubview(titleLabel)
        
        loginTextField = UITextField(frame: CGRect(x: 50, y: titleLabel.frame.origin.y + 60, width: loginView.frame.width - 50, height: 25))
        loginTextField.textAlignment = .left
        loginTextField.tintColor = UIColor(hexString: "3f96ce")
        loginTextField.placeholder = "Enter Email ID / Mobile Number"
        loginTextField.textColor = UIColor(hexString: "333333")
        loginTextField.font = UIFont(name: "Roboto-Light", size: 12.0)
        self.view.addSubview(loginTextField)
        
        lineView = UIView(frame: CGRect(x: loginTextField.frame.origin.x, y: loginTextField.frame.origin.y + 30, width: loginView.frame.width - 50, height: 1))
        lineView.backgroundColor = UIColor(hexString: "e9e9e9")
        self.view.addSubview(lineView)
        
        nextButton = UIButton(frame: CGRect(x: 0, y: lineView.frame.origin.y + 30, width: 100, height: 40))
        nextButton.center.x = loginView.center.x
        nextButton.applyGradient(colours: [blue1!, blue2!])
        nextButton.backgroundColor = UIColor.white
        nextButton.layer.cornerRadius = nextButton.frame.height/2
        nextButton.clipsToBounds = true
        nextButton.setTitleColor(UIColor.white, for: .normal)
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 14.0)
        nextButton.addTarget(self, action: #selector(onPressNext(sender:)), for: .touchUpInside)
        self.view.addSubview(nextButton)
        
        passwordTextField = UITextField(frame: CGRect(x: 50, y: lineView.frame.origin.y + 20, width: loginView.frame.width - 50, height: 25))
        passwordTextField.textAlignment = .left
        passwordTextField.tintColor = UIColor(hexString: "3f96ce")
        passwordTextField.placeholder = "Password"
        passwordTextField.textColor = UIColor(hexString: "333333")
        passwordTextField.font = UIFont(name: "Roboto-Light", size: 12.0)
        passwordTextField.isSecureTextEntry = true
        self.view.addSubview(passwordTextField)

        passwordLineView = UIView(frame: CGRect(x: passwordTextField.frame.origin.x, y: passwordTextField.frame.origin.y + 10, width: loginView.frame.width - 50, height: 1))
        passwordLineView.backgroundColor = UIColor(hexString: "e9e9e9")
        self.view.addSubview(passwordLineView)

        forgotPasswordButton = UIButton(frame: CGRect(x: passwordTextField.frame.origin.x, y: passwordLineView.frame.origin.y + 20, width: 150, height: 25))
        forgotPasswordButton.setTitleColor(UIColor(hexString: "999999"), for: .normal)
        forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 14.0)
        forgotPasswordButton.addTarget(self, action: #selector(onPressForgotPassword(sender:)), for: .touchUpInside)
        forgotPasswordButton.contentHorizontalAlignment = .left
        self.view.addSubview(forgotPasswordButton)
        
        orLabel = UILabel(frame: CGRect(x: 0, y: nextButton.frame.origin.y + 50, width: 50, height: 25))
        orLabel.center.x = loginView.center.x
        orLabel.textAlignment = .center
        orLabel.text = "or"
        orLabel.textColor = UIColor(hexString: "666666")
        orLabel.font = UIFont(name: "Roboto-Regular", size: 12.0)
        self.view.addSubview(orLabel)
        
        orLineView1 = UIView(frame: CGRect(x: 0, y: 0, width: 65, height: 1))
        orLineView1.backgroundColor = UIColor(hexString: "e9e9e9")
        orLineView1.frame.origin.x = orLabel.frame.origin.x - 55
        orLineView1.center.y = orLabel.center.y
        self.view.addSubview(orLineView1)
        
        orLineView2 = UIView(frame: CGRect(x: 0, y: 0, width: 65, height: 1))
        orLineView2.backgroundColor = UIColor(hexString: "e9e9e9")
        orLineView2.frame.origin.x = orLabel.frame.origin.x + 41
        orLineView2.center.y = orLabel.center.y
        self.view.addSubview(orLineView2)

        useOtpButton = UIButton(frame: CGRect(x: 0, y: orLabel.frame.origin.y + 40, width: 150, height: 30))
        useOtpButton.center.x = loginView.center.x
        useOtpButton.backgroundColor = UIColor.white
        useOtpButton.layer.borderWidth = 1.0
        useOtpButton.layer.borderColor = blue2!.cgColor
        useOtpButton.layer.cornerRadius = useOtpButton.frame.height/2
        useOtpButton.clipsToBounds = true
        useOtpButton.setTitleColor(blue2!, for: .normal)
        useOtpButton.setTitle("LOGIN USING OTP", for: .normal)
        useOtpButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 12.0)
        useOtpButton.addTarget(self, action: #selector(onPressUseOtp(sender:)), for: .touchUpInside)
        self.view.addSubview(useOtpButton)
    }
    
    func initSocialView() {
        socialTitle = UILabel(frame: CGRect(x: 0, y: 60, width: 100, height: 20))
        socialTitle.center.x = self.view.center.x
        socialTitle.textAlignment = .center
        socialTitle.text = "Login using"
        socialTitle.textColor = UIColor.white
        socialTitle.font = UIFont(name: "Roboto-Regular", size: 13.0)
        self.view.addSubview(socialTitle)
        
        googleButton = UIButton(frame: CGRect(x: 0, y: socialTitle.frame.origin.y + socialTitle.frame.height + 20, width: 60, height: 60))
        googleButton.center.x = self.view.center.x
        googleButton.backgroundColor = UIColor.white
        googleButton.layer.cornerRadius = googleButton.frame.height/2
        googleButton.clipsToBounds = true
        googleButton.setImage(UIImage(named: "google"), for: .normal)
        // googleButton.addTarget(self, action: #selector(onPressNext(sender:)), for: .touchUpInside)
        self.view.addSubview(googleButton)
        
        fbButton = UIButton(frame: CGRect(x: googleButton.frame.origin.x - 100 , y: socialTitle.frame.origin.y + socialTitle.frame.height + 20, width: 60, height: 60))
        fbButton.backgroundColor = UIColor.white
        fbButton.layer.cornerRadius = googleButton.frame.height/2
        fbButton.clipsToBounds = true
        fbButton.setImage(UIImage(named: "facebook"), for: .normal)
        // googleButton.addTarget(self, action: #selector(onPressNext(sender:)), for: .touchUpInside)
        self.view.addSubview(fbButton)
        
        trueButton = UIButton(frame: CGRect(x: googleButton.frame.origin.x + 100 , y: socialTitle.frame.origin.y + socialTitle.frame.height + 20, width: 60, height: 60))
        trueButton.backgroundColor = UIColor.white
        trueButton.layer.cornerRadius = trueButton.frame.height/2
        trueButton.clipsToBounds = true
        trueButton.setImage(UIImage(named: "truecaller"), for: .normal)
        // googleButton.addTarget(self, action: #selector(onPressNext(sender:)), for: .touchUpInside)
        self.view.addSubview(trueButton)
    }
    
    func initInfoView(){
        infoQuestion = UILabel(frame: CGRect(x: 20, y: loginView.frame.origin.y + loginView.frame.size.height + 70, width: 180, height: 20))
        infoQuestion.center.x = self.view.center.x
        infoQuestion.textAlignment = .center
        infoQuestion.textColor = UIColor.white
        infoQuestion.font = UIFont(name: "Roboto-Medium", size: 14.0)
        self.view.addSubview(infoQuestion)
        
        infoLabel = UILabel(frame: CGRect(x: 20, y: infoQuestion.frame.origin.y + 40, width: self.view.frame.width - 40, height: 60))
        infoLabel.center.x = self.view.center.x
        infoLabel.textAlignment = .center
        infoLabel.numberOfLines = 2
        infoLabel.textColor = UIColor.white
        infoLabel.font = UIFont(name: "Roboto-Light", size: 15.0)
        self.view.addSubview(infoLabel)
        
        leftLineView = UIView(frame: CGRect(x: infoQuestion.frame.origin.x - 40, y: infoQuestion.frame.origin.y+10, width: 40, height: 1))
        leftLineView.backgroundColor = UIColor.white
        self.view.addSubview(leftLineView)
        
        rightLineView = UIView(frame: CGRect(x: infoQuestion.frame.origin.x + infoQuestion.frame.width , y: infoQuestion.frame.origin.y+10, width: 40, height: 1))
        rightLineView.backgroundColor = UIColor.white
        self.view.addSubview(rightLineView)
        
        infoButton = UIButton(frame: CGRect(x: 20 , y: infoLabel.frame.origin.y + 80, width: 120, height: 40))
        infoButton.backgroundColor = UIColor.white
        infoButton.center.x = self.view.center.x
        infoButton.layer.cornerRadius = infoButton.frame.height/2
        infoButton.setTitleColor(blue2, for: .normal)
        infoButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 13.0)
        infoButton.addTarget(self, action: #selector(onPressInfoButton(sender:)), for: .touchUpInside)
        self.view.addSubview(infoButton)
        signupViewUI()
//        guestUserViewUI()
//        alreadyRegisteredViewUI()
        
    }
    
    func initOtpView() {
        otpView = UIView(frame: otpFrame)
        otpView.backgroundColor = UIColor.white
        otpView.layer.cornerRadius = 5.0
        otpView.clipsToBounds = true
        self.view.addSubview(otpView)
        
        otpTopLabel = UILabel(frame: CGRect(x: 0, y: otpView.frame.origin.y + 50, width: 200, height: 25))
        otpTopLabel.center.x = otpView.center.x
        otpTopLabel.textAlignment = .center
        otpTopLabel.text = "Verification Code"
        otpTopLabel.textColor = UIColor(hexString: "333333")
        otpTopLabel.font = UIFont(name: "Roboto-Light", size: 18.0)
        self.view.addSubview(otpTopLabel)
        
        otpImage = UIImageView(frame: CGRect(x: 0, y: otpTopLabel.frame.origin.y + 40, width: 160, height: 100))
        otpImage.image = UIImage(named: "OtpLoginImage.png")
        otpImage.center.x = otpView.center.x
        self.view.addSubview(otpImage)
        
        verificationLabel = UILabel(frame: CGRect(x: 0, y: otpImage.frame.origin.y + 140, width: otpView.frame.width - 100, height: 50))
        verificationLabel.text = "Please type the Verification Code sent to \(phoneNumber) via SMS"
        verificationLabel.numberOfLines = 2
        verificationLabel.lineBreakMode = .byWordWrapping
        verificationLabel.textAlignment = .center
        verificationLabel.center.x = otpView.center.x
        verificationLabel.textColor = UIColor(hexString: "333333")
        verificationLabel.font = UIFont(name: "Roboto-Light", size: 13.0)
        self.view.addSubview(verificationLabel)
        
        otpTextField = UITextField(frame: CGRect(x: 0, y: verificationLabel.frame.origin.y + 60, width: 200, height: 25))
        otpTextField.textAlignment = .center
        otpTextField.center.x = otpView.center.x
        otpTextField.tintColor = UIColor(hexString: "3f96ce")
        otpTextField.placeholder = "Enter OTP"
        otpTextField.textColor = UIColor(hexString: "333333")
        otpTextField.font = UIFont(name: "Roboto-Light", size: 18.0)
        self.view.addSubview(otpTextField)
        
        otpLineView = UIView(frame: CGRect(x: otpTextField.frame.origin.x, y: otpTextField.frame.origin.y + 30, width: otpTextField.frame.width, height: 1))
        otpLineView.backgroundColor = UIColor(hexString: "e9e9e9")
        self.view.addSubview(otpLineView)
        
        clockImage = UIImageView(frame: CGRect(x: 0, y: otpLineView.frame.origin.y + 30, width: 25, height: 25))
        clockImage.image = UIImage(named: "icClock")
        clockImage.center.x = otpView.center.x - 12
        self.view.addSubview(clockImage)
        
        countdownLabel = UILabel(frame: CGRect(x: 0, y: clockImage.frame.origin.y, width: 30, height: 25))
        countdownLabel.center.x = otpView.center.x + 15
        countdownLabel.text = "120"
        countdownLabel.textColor = UIColor(hexString: "999999")
        countdownLabel.font = UIFont(name: "Roboto-Light", size: 14.0)
        self.view.addSubview(countdownLabel)
        
        verifyButton = UIButton(frame: CGRect(x: 0, y: countdownLabel.frame.origin.y + 50, width: 100, height: 40))
        verifyButton.center.x = otpView.center.x
        verifyButton.applyGradient(colours: [blue1!, blue2!])
        verifyButton.backgroundColor = UIColor.white
        verifyButton.layer.cornerRadius = verifyButton.frame.height/2
        verifyButton.clipsToBounds = true
        verifyButton.setTitleColor(UIColor.white, for: .normal)
        verifyButton.setTitle("VERIFY", for: .normal)
        verifyButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 14.0)
        verifyButton.addTarget(self, action: #selector(onPressVerify(sender:)), for: .touchUpInside)
        self.view.addSubview(verifyButton)
        
        tncLabel = UILabel(frame: CGRect(x: 0, y: verifyButton.frame.origin.y + 60, width: otpView.frame.width - 50, height: 25))
        tncLabel.center.x = otpView.center.x
        tncLabel.textAlignment = .center
        tncLabel.text = "By clicking on Verify button, you agree to"
        tncLabel.textColor = UIColor(hexString: "333333")
        tncLabel.font = UIFont(name: "Roboto-Light", size: 12.0)
        self.view.addSubview(tncLabel)
        
        tncButton = UIButton(frame: CGRect(x: 0, y: tncLabel.frame.origin.y + 20, width: 200, height: 25))
        tncButton.center.x = otpView.center.x
        tncButton.setTitle("Furlenco’s Terms & Conditions.", for: .normal)
        tncButton.setTitleColor(blue2, for: .normal)
        tncButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 12.0)
        tncButton.addTarget(self, action: #selector(onPressTnc(sender:)), for: .touchUpInside)
        self.view.addSubview(tncButton)
        
        setOtpView(alpha: 0.0)
        setOtpObjects(alpha: 0.0)
       // setOtpText(alpha: 0.0)
    }
    
    func initForgotPasswordView() {
        
        forgotView = UIView(frame: forgotPasswordFrame)
        forgotView.backgroundColor = UIColor.white
        forgotView.layer.cornerRadius = 5.0
        forgotView.clipsToBounds = true
        self.view.addSubview(forgotView)
        
        forgotTitleLabel = UILabel(frame: CGRect(x: 0, y: forgotView.frame.origin.y + 20, width: 200, height: 25))
        forgotTitleLabel.center.x = forgotView.center.x
        forgotTitleLabel.textAlignment = .center
        forgotTitleLabel.text = "Forgot Password?"
        forgotTitleLabel.textColor = UIColor(hexString: "333333")
        forgotTitleLabel.font = UIFont(name: "Roboto-Light", size: 18.0)
        //forgotTitleLabel.sizeToFit()
        self.view.addSubview(forgotTitleLabel)
        
        forgotDescLabel = UILabel(frame: CGRect(x: forgotView.frame.origin.x + 30, y: forgotTitleLabel.frame.origin.y + 40, width: forgotView.frame.size.width - 80, height: 25))
        forgotDescLabel.textAlignment = .center
        forgotDescLabel.numberOfLines = 5
        forgotDescLabel.lineBreakMode = .byWordWrapping
        forgotDescLabel.text = "Don’t worry! You can easily set a new password. Just type following details and we will send you a link to reset your password."
        forgotDescLabel.textColor = UIColor(hexString: "666666")
        forgotDescLabel.font = UIFont(name: "Roboto-Light", size: 14.0)
        forgotDescLabel.sizeToFit()
        self.view.addSubview(forgotDescLabel)
        
        forgotTextField = UITextField(frame: CGRect(x: 50, y: forgotDescLabel.frame.origin.y + forgotDescLabel.frame.height + 20, width: forgotView.frame.width - 50, height: 25))
        forgotTextField.textAlignment = .left
        forgotTextField.tintColor = UIColor(hexString: "3f96ce")
        forgotTextField.placeholder = "Enter Email ID / Mobile Number"
        forgotTextField.textColor = UIColor(hexString: "333333")
        forgotTextField.font = UIFont(name: "Roboto-Light", size: 12.0)
        self.view.addSubview(forgotTextField)
        
        forgotLineView = UIView(frame: CGRect(x: forgotTextField.frame.origin.x, y: forgotTextField.frame.origin.y + 30, width: forgotView.frame.width - 50, height: 1))
        forgotLineView.backgroundColor = UIColor(hexString: "e9e9e9")
        self.view.addSubview(forgotLineView)
        
        resetButton = UIButton(frame: CGRect(x: 0, y: forgotLineView.frame.origin.y + 30, width: 100, height: 40))
        resetButton.center.x = forgotView.center.x
        resetButton.applyGradient(colours: [blue1!, blue2!])
        resetButton.backgroundColor = UIColor.white
        resetButton.layer.cornerRadius = resetButton.frame.height/2
        resetButton.clipsToBounds = true
        resetButton.setTitleColor(UIColor.white, for: .normal)
        resetButton.setTitle("RESET", for: .normal)
        resetButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 14.0)
        resetButton.addTarget(self, action: #selector(onPressReset(sender:)), for: .touchUpInside)
        self.view.addSubview(resetButton)
        self.setForgotView(alpha: 0.0)
        self.setForgotObjects(alpha: 0.0)
    }
    
    func initBackButton() {
        backButton = UIButton(frame: CGRect(x: 40, y: titleLabel.frame.origin.y, width: 20, height: 20))
        backButton.addTarget(self, action: #selector(onPressBack(sender:)), for: .touchUpInside)
        backButton.setImage(UIImage(named: "icBack"), for: .normal)
        self.view.addSubview(backButton)
        backButton.alpha = 0
    }
    
    
    func signupViewUI() {
        infoQuestion.text = "New User?"
        infoQuestion.sizeToFit()
        infoButton.setTitle("SIGN-UP", for: .normal)
        infoLabel.text = "Sign-up to enjoy 40% faster checkouts and efficient subscription management."
        infoQuestion.center.x = self.view.center.x
        leftLineView.frame.origin.x = infoQuestion.frame.origin.x - 50
        rightLineView.frame.origin.x = infoQuestion.frame.origin.x + infoQuestion.frame.width + 10
    }
    
    func guestUserViewUI(){
        
        infoQuestion.text = "New User?"
        infoQuestion.sizeToFit()
        infoButton.setTitle("CONTINUE AS GUEST", for: .normal)
        infoLabel.text = "Thats okay! You can continue as guest user and sign-up later."
        infoQuestion.center.x = self.view.center.x
        leftLineView.frame.origin.x = infoQuestion.frame.origin.x - 50
        rightLineView.frame.origin.x = infoQuestion.frame.origin.x + infoQuestion.frame.width + 10
    }
    
    func alreadyRegisteredViewUI(){
        infoQuestion.text = "Already Registered?"
        infoQuestion.sizeToFit()
        infoButton.setTitle("LOGIN", for: .normal)
        infoButton.alpha = 0
        infoQuestion.center.x = self.view.center.x
        leftLineView.frame.origin.x = infoQuestion.frame.origin.x - 50
        rightLineView.frame.origin.x = infoQuestion.frame.origin.x + infoQuestion.frame.width + 10
    }
    
    
    func resetLoginPositions() {
        self.titleLabel.frame.origin.y = self.loginView.frame.origin.y + 20
        self.loginTextField.frame.origin.y = self.titleLabel.frame.origin.y + 60
        self.lineView.frame.origin.y = self.loginTextField.frame.origin.y + 30
        self.nextButton.frame.origin.y = self.lineView.frame.origin.y + 30
        self.backButton.frame.origin.y = self.titleLabel.frame.origin.y
        self.nextButton.setTitle("NEXT", for: .normal)
    }
    
    func setLoginView(alpha: CGFloat) {
        loginView.alpha = alpha
    }
    
    func setOtpView(alpha: CGFloat) {
        otpView.alpha = alpha
    }
    
    func setForgotView(alpha: CGFloat) {
        self.backButton.frame.origin.y = forgotTitleLabel.frame.origin.y
        forgotView.alpha = alpha
    }
    
    func setLoginObjects(alpha: CGFloat) {
        loginTextField.alpha = alpha
        titleLabel.alpha = alpha
        lineView.alpha = alpha
        nextButton.alpha = alpha
    }

    func setOtpObjects(alpha: CGFloat) {
        otpTopLabel.alpha = alpha
        verificationLabel.alpha = alpha
        otpTextField.alpha = alpha
        countdownLabel.alpha = alpha
        tncLabel.alpha = alpha
        tncButton.alpha = alpha
        verificationLabel.text = "Please type the Verification Code sent to \(phoneNumber) via SMS"
        otpImage.alpha = alpha
        otpLineView.alpha = alpha
        clockImage.alpha = alpha
        verifyButton.alpha = alpha
    }
    
    func setPasswordComponents(alpha: CGFloat) {
        passwordTextField.alpha = alpha
        passwordLineView.alpha = alpha
        forgotPasswordButton.alpha = alpha
        orLabel.alpha = alpha
        orLineView1.alpha = alpha
        orLineView2.alpha = alpha
        useOtpButton.alpha = alpha
    }
    
    func setSocialObjects(alpha: CGFloat) {
        fbButton.alpha = alpha
        googleButton.alpha = alpha
        trueButton.alpha = alpha
        socialTitle.alpha = alpha
    }
    
    func setBottomObjects(alpha: CGFloat) {
        infoQuestion.alpha = alpha
        infoLabel.alpha = alpha
        leftLineView.alpha = alpha
        rightLineView.alpha = alpha
        infoButton.alpha = alpha
    }
    
    func setForgotObjects(alpha: CGFloat) {
        forgotTitleLabel.alpha = alpha
        forgotDescLabel.alpha = alpha
        forgotTextField.alpha = alpha
        forgotLineView.alpha = alpha
        resetButton.alpha = alpha
    }
    
    func animateLoginPassword() {
        UIView.animate(withDuration: 0.3, animations: {
            self.loginView.frame = self.loginPasswordFrame
            self.titleLabel.frame.origin.y = self.loginView.frame.origin.y + 20
            self.loginTextField.frame.origin.y = self.titleLabel.frame.origin.y + 60
            self.lineView.frame.origin.y = self.loginTextField.frame.origin.y + 30
            self.passwordTextField.frame.origin.y = self.lineView.frame.origin.y + 20
            self.passwordLineView.frame.origin.y = self.passwordTextField.frame.origin.y + 30
            self.forgotPasswordButton.frame.origin.y = self.passwordLineView.frame.origin.y + 20
            self.nextButton.frame.origin.y = self.forgotPasswordButton.frame.origin.y + 60
            self.nextButton.setTitle("LOGIN", for: .normal)
            self.orLabel.frame.origin.y = self.nextButton.frame.origin.y + 50
            self.orLabel.center.x = self.nextButton.center.x
            self.orLineView1.center.y = self.orLabel.center.y
            self.orLineView2.center.y = self.orLabel.center.y
            self.useOtpButton.frame.origin.y = self.orLabel.frame.origin.y + 40
            self.backButton.frame.origin.y = self.titleLabel.frame.origin.y
            self.setSocialObjects(alpha: 0)
            self.setBottomObjects(alpha: 0)
        }, completion: { (Void) in
            UIView.animate(withDuration: 0.3, animations: {
                self.backButton.alpha = 1
                self.setPasswordComponents(alpha: 1)
            })
        })
    }
    
    //2
    func fadeLoginPasswordObjects(alpha: CGFloat) {
        UIView.animate(withDuration: 0.3, animations: {
            self.setLoginObjects(alpha: alpha)
            self.setPasswordComponents(alpha: alpha)
        }) { (Void) in
            if alpha == 0 {
                self.animateLoginPasswordView(alpha: 0)
            }
        }
    }
    //3
    func animateLoginPasswordView(alpha: CGFloat) {
        UIView.animate(withDuration: 0.3, animations: {
            if alpha == 0 {
                if self.currentScreen == "OTP" {
                    self.loginView.frame = self.otpFrame
                } else if self.currentScreen == "FORGOT" {
                    self.loginView.frame = self.forgotPasswordFrame
                }
            } else {
                if self.currentScreen == "LOGINPASSWORD" {
                    self.loginView.frame = self.loginFrame
                    self.resetLoginPositions()
                }
            }
        }, completion: { (Void) in
            if alpha == 0 {
                self.setLoginView(alpha: 0)
                if self.currentScreen == "OTP" {
                    self.setOtpView(alpha: 1)
                    self.fadeOtpObjects(alpha: 1)
                    self.loginView.frame = self.loginPasswordFrame
                } else if self.currentScreen == "FORGOT" {
                    self.loginView.frame = self.loginPasswordFrame
                    self.forgotView.frame = self.forgotPasswordFrame
                    self.setForgotView(alpha: 1)
                    self.fadeForgotObjects(alpha: 1)
                }
            }
        })
    }
    
    func fadeOtpObjects(alpha: CGFloat) {
        UIView.animate(withDuration: 0.3, animations: {
            self.setOtpObjects(alpha: alpha)
            self.setPasswordComponents(alpha: 0)
        }) { (Void) in
            if alpha == 0 {
                self.animateOtpView(alpha: 0)
            }
        }
    }
    
    func animateOtpView(alpha: CGFloat) {
        UIView.animate(withDuration: 0.3, animations: {
            if alpha == 0 {
                self.otpView.frame = self.loginPasswordFrame
            }
        }, completion: { (Void) in
            if alpha == 0 {
                self.loginView.frame = self.loginPasswordFrame
                self.setOtpView(alpha: alpha)
                self.setLoginView(alpha: 1)
                self.fadeLoginPasswordObjects(alpha: 1)
                self.otpView.frame = self.otpFrame
            } else {
                self.fadeOtpObjects(alpha: alpha)
            }
        })
    }
    
    func fadeForgotObjects(alpha: CGFloat) {
        UIView.animate(withDuration: 0.3, animations: {
            self.setForgotObjects(alpha: alpha)
            self.setPasswordComponents(alpha: 0)
        }, completion: { (Void) in
            if alpha == 0 {
                self.animateForgotView(alpha: alpha)
            }
        })
    }
    
    func animateForgotView(alpha: CGFloat) {
        UIView.animate(withDuration: 0.3, animations: {
            if alpha == 0 {
                self.forgotView.frame = self.loginPasswordFrame
            }
        }, completion: { (Void) in
            if alpha == 0 {
                self.animateLoginPassword()
                self.setForgotView(alpha: 0)
                self.setLoginView(alpha: 1)
                self.fadeLoginPasswordObjects(alpha: 1)
            } else {
                self.fadeForgotObjects(alpha: 1)
            }
        })
    }
    
    @objc func onPressNext(sender: UIButton!) {
        
        if loginTextField.text?.isEmpty == false {
            //if password
            currentScreen = "LOGINPASSWORD"
            animateLoginPassword()
            //else
            //animateOtpObjects(alpha: 0.0)
        }
        
    }
    
    @objc func onPressVerify(sender: UIButton!) {
        
    }
    
    
    @objc func onPressBack(sender: UIButton!) {
        if currentScreen == "OTP" {
            currentScreen = "LOGINPASSWORD"
            fadeOtpObjects(alpha: 0)
        } else if currentScreen == "FORGOT" {
            currentScreen = "LOGINPASSWORD"
            fadeForgotObjects(alpha: 0)
        } else if currentScreen == "LOGINPASSWORD" {
            UIView.animate(withDuration: 0.3, animations: {
                self.backButton.alpha = 0
                self.setPasswordComponents(alpha: 0)
            }, completion: { (Void) in
                self.animateLoginPasswordView(alpha: 1)
            })
        }
    }
    
    @objc func onPressTnc(sender: UIButton!) {
        
    }
    
    @objc func onPressForgotPassword(sender: UIButton!) {
        currentScreen = "FORGOT"
        fadeLoginPasswordObjects(alpha: 0)
    }
    
    @objc func onPressInfoButton(sender: UIButton!) {
        
    }
    
    @objc func onPressUseOtp(sender: UIButton!) {
        if loginTextField.text?.isEmpty == false{
            currentScreen = "OTP"
            phoneNumber = loginTextField.text!
            fadeLoginPasswordObjects(alpha: 0)
        }
    }
    
    @objc func onPressReset(sender: UIButton!) {
    }
    
}

extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        if self.bounds.size.width == 375.0 {
            gradient.frame = self.bounds
            gradient.frame.size.width = UIScreen.main.bounds.size.width
        } else {
            gradient.frame = self.bounds
        }
        
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        var count: Int = 0
        if let subL = self.layer.sublayers {
            for layer in subL {
                if layer is CAGradientLayer {
                    self.layer.sublayers?.remove(at: count)
                }
                count += 1
            }
        }
        self.layer.insertSublayer(gradient, at: 0)
    }
}

extension UIColor {
    /// EZSE: init method with RGB alphaues from 0 to 255, instead of 0 to 1. With alpha(default:1)
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    
    /// EZSE: init method with hex string and alpha(default: 1)
    public convenience init?(hexString: String, alpha: CGFloat = 1.0) {
        var formatted = hexString.replacingOccurrences(of: "0x", with: "")
        formatted = formatted.replacingOccurrences(of: "#", with: "")
        if let hex = Int(formatted, radix: 16) {
            let red = CGFloat(CGFloat((hex & 0xFF0000) >> 16)/255.0)
            let green = CGFloat(CGFloat((hex & 0x00FF00) >> 8)/255.0)
            let blue = CGFloat(CGFloat((hex & 0x0000FF) >> 0)/255.0)
            self.init(red: red, green: green, blue: blue, alpha: alpha)
            
        } else {
            return nil
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

