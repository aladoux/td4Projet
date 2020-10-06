/* Test des scénario :
    Feature Affichage :
        - Affichage d'un atelier
*/

const webdriver = require('selenium-webdriver'),
    By = webdriver.By,
    until = webdriver.until;

const driver = new webdriver.Builder()
    .forBrowser('chrome')
    .build();

driver.get('http://localhost:3000/');

let count = 0;

driver.findElements(By.className("li")).then((articles) => {
    count = articles.length;
    let btn = driver.findElement(By.className("btn"));
    btn.click();
    return driver.sleep(2000);
})
.then(() => {
    let nom = driver.findElement(By.id("name"));
    let description = driver.findElement(By.id("description"));
    nom.sendKeys("CDP");
    description.sendKeys("Initiation a CDP");
    let save = driver.findElement(By.css("button"));
    save.click();
    return driver.sleep(1000);
})
.then(() => {
    let btn = driver.findElement(By.className("btn"));
    btn.click();
    return driver.sleep(2000);
})
.then(() => {
    let nom = driver.findElement(By.id("name"));
    let description = driver.findElement(By.id("description"));
    nom.sendKeys("Biologie");
    description.sendKeys("Initiation a la biologie");
    let save = driver.findElement(By.css("button"));
    save.click();
    return driver.sleep(1000);
})
.then(() => {
    driver.findElements(By.css("li")).then((articles) => {
        let count_after = articles.length;
        if(count+2==count_after){
            console.log("Test validé");
        }else{
            console.log("Test échoué");
        }
        driver.quit();
    });
})

