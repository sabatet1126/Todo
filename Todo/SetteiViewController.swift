//
//  SetteiViewController.swift
//  Todo
//
//  Created by 藤田麻里 on 2017/04/03.
//  Copyright © 2017年 鯖. All rights reserved.
//
import UIKit
import Social
import TwitterKit

class SetteiViewCountroller: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var webButton: UIButton!
    @IBOutlet weak var charaButton: UIButton!
    @IBOutlet var tweetButton: UIButton!
    @IBOutlet var twitterButton: UIButton!
    @IBOutlet weak var twitterLabel: UILabel!
    
    var charaNum:UserDefaults = UserDefaults.standard
    var serifuData : UserDefaults = UserDefaults.standard
    var colorData : UserDefaults = UserDefaults.standard

        @IBAction func backSetteiButton(_ segue: UIStoryboardSegue) {}
    
    var TWEETtext = ["ーーさんの進捗は私が監視させていただいています！...一緒に頑張るわよ。　appstoreURL","ーーの作業進捗、あたしが監視してるよ。さっさと仕上げよ。　appstoreURL","ーーさんは作業を頑張ってますよ...ね？そうよね？　appstoreURL","ーー、作業、頑張ってるから、応援したげてね...! appstoreURL","ーーちゃん、作業頑張ってまーす！いぇーい！　appstoreURL","ーーちゃんちゃんと作業進ませてるよ〜、ほんとだよ〜！...たぶん...? appstore","んもぅーーちゃん作業やってる？サボってたら容赦無く咎めなさいよ。やっちゃいなさい。　appstoreURL","ーーくんの作業は僕が監視しています。サボるようなら許しませんよ！　appstoreURL","ーーは絶賛作業中だ。みんなも監視よろしく頼んだぞ。　appstore","えええっと！ーーさんのし、進捗は僕が管理させていただきます！お、終わらせましょう！　appstore","ーーは作業頑張ってるみたいだけど...まあ、終わらせられるはずだよね〜？　appstore","...ーーさんは、作業中です。...みなさんも応援宜しくお願いします...。　appstoreURL","あー、ーーは作業中だから、みんなもサボってたら適度に急かしてやれよー。よろしくー。　appstore","みなさん！ーー様は作業を頑張っておられます！どうか応援のほどよろしくお願いいたします！ appstoreURL"]
    
    @IBAction func tweet(){
    
        if let NAME = charaNum.object(forKey: "NAME") as? String, let _ = charaNum.object(forKey: "Num") {
            var text:String=""
            
            
            
            if charaNum.object(forKey: "Num") as! Int == 0 {
                text = "\(NAME)さんの進捗は私が監視させていただいています！...一緒に頑張るわよ。　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 1{
                text = "\(NAME)の作業進捗、あたしが監視してるよ。さっさと仕上げよ。　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 2{
                text = "\(NAME)さんは作業を頑張ってますよ...ね？そうよね？　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 3{
                text = "\(NAME)、作業、頑張ってるから、応援したげてね...! appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 4{
                text = "\(NAME)ちゃん、作業頑張ってまーす！いぇーい！　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 5{
                text = "\(NAME)ちゃんちゃんと作業進ませてるよ〜、ほんとだよ〜！...たぶん...? appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 6{
                text = "んもぅ、\(NAME)ちゃん作業やってる？サボってたら容赦無く咎めなさいよ。やっちゃいなさい。　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 7{
                text = "\(NAME)くんの作業は僕が監視しています。サボるようなら許しませんよ！　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 8{
                text = "\(NAME)は絶賛作業中だ。みんなも監視よろしく頼んだぞ。　appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 9{
                text = "えええっと！\(NAME)さんのし、進捗は僕が管理させていただきます！お、終わらせましょう！　appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 10{
                text = "\(NAME)は作業頑張ってるみたいだけど...まあ、終わらせられるはずだよね〜？　appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 11{
                text = "...\(NAME)さんは、作業中です。...みなさんも応援宜しくお願いします...。　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 12{
                text = "あー、\(NAME)は作業中だから、みんなもサボってたら適度に急かしてやれよー。よろしくー。　appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 13{
                text = "みなさん！\(NAME)様は作業を頑張っておられます！どうか応援のほどよろしくお願いいたします！ appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 14{
                text = "\(NAME)さんは現在作業中です。　appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 15{
                text = "あはは〜、\(NAME)ちゃん、本当に時間内に終わるのかな？　appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 16{
                text = "ああ、\(NAME)さんは今絶賛作業中ですよ。終わりますかねえ、ひひひっ　appstoreURL"
            }else if charaNum.object(forKey: "Num") as! Int == 17{
                text = "\(NAME)さん、今は絶賛作業中です！応援宜しくお願いしますね！ appstore"
            }else if charaNum.object(forKey: "Num") as! Int == 18{
                text = "おい、今\(NAME)は作業中なんだ！いい具合にほっといてやれよな！ appstoreURL"
            }
            
            let composeViewController: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
            composeViewController.setInitialText(text)
            
            self.present(composeViewController, animated: true, completion: nil)
            
        }else{
            let alertController = UIAlertController(title: "アカウント認証", message: "Twitterアカウントを認証して下さい", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)

        }
        

        
        
    
        
    }
    
    
    @IBAction func web() {
        let url = URL(string: "http://shinchokudoudesuka.jimdo.com")
        if UIApplication.shared.canOpenURL(url!){
            UIApplication.shared.openURL(url!)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
        
    override func viewWillAppear(_ animated: Bool) {
        
        self.view.backgroundColor = appDelegate.fColor
        
        colorButton.layer.cornerRadius = 0.135*(UIScreen.main.bounds.size.width)
        colorButton.backgroundColor = appDelegate.bColor
        
        webButton.layer.cornerRadius = 0.135*(UIScreen.main.bounds.size.width)
        webButton.backgroundColor = appDelegate.dColor
        
        charaButton.layer.cornerRadius = 0.135*(UIScreen.main.bounds.size.width)
        charaButton.backgroundColor = appDelegate.dColor
        
        tweetButton.layer.cornerRadius = 0.135*(UIScreen.main.bounds.size.width)
        tweetButton.backgroundColor = appDelegate.bColor
        
        
        
        twitterButton.layer.cornerRadius = 0.096*(UIScreen.main.bounds.size.width)
        twitterButton.layer.masksToBounds = true
        twitterLabel.layer.cornerRadius = 0.096*(UIScreen.main.bounds.size.width)
        twitterLabel.layer.masksToBounds = true
        twitterButtonColor()
    }
        // Do any additional setup after loading the view.
    func twitterButtonColor() {
        if let session = Twitter.sharedInstance().sessionStore.session() {
            twitterButton.alpha = 0.5
        }else{
            twitterButton.alpha = 1
        }
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
