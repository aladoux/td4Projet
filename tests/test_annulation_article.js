/* Test des scénario :

    Feature Création :
        - Annulation de saisie de formulaire
*/

const webdriver = require('selenium-webdriver'),
    By = webdriver.By,
    until = webdriver.until;

const driver = new webdriver.Builder()
    .forBrowser('chrome')
    .build();

driver.get('http://localhost:3000/');

let count = 0;

driver.findElements(By.css("li")).then((articles) => {
    count = articles.length;
    let btn = driver.findElement(By.className("btn"));
    btn.click();
    return driver.sleep(2000);
}).then(() => {
    let nom = driver.findElement(By.id("name"));
    let description = driver.findElement(By.id("description"));
    nom.sendKeys("CDP");
    description.sendKeys("Initiation a CDP");
    let cancel = driver.findElement(By.css("a"));
    cancel.click();
    return driver.sleep(2000);
}).then(() => {
    driver.findElements(By.css("li")).then((articles) => {
        let count_after = articles.length;
        if(count==count_after){
            console.log("Test validé");
        }else{
            console.log("Test échoué");
        }
        driver.quit();
    });
});

