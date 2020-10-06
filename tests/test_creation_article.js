/* Test des scénario :

    Feature Création : 
        - Création d'un atelier via bouton
        - Validation de saisie du formulaire
    Feature Affichage
        - Affichage d'un atelier
*/

const webdriver = require('selenium-webdriver'),
    By = webdriver.By,
    until = webdriver.until;

const driver = new webdriver.Builder()
    .forBrowser('chrome')
    .build();

driver.get('http://localhost:3000/');

let btn = driver.findElement(By.className("btn"));
btn.click();

driver.sleep(3000).then(function(){
    let nom = driver.findElement(By.id("name"));
    let description = driver.findElement(By.id("description"));
    nom.sendKeys("CDP");
    description.sendKeys("Initiation a CDP");
    return driver.findElement(By.css("button"));
})
.then((res) => {
    res.click();
    driver.sleep(2000)
    .then(() => {
        return driver.findElements(By.css("li"));
    })
    .then((articles) => {
        if(articles.length>0){
            console.log("Test validé");
        }else{
            console.log("Test échoué");
        }
        driver.quit()
    }); 
});

