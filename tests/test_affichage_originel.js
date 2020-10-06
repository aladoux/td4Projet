/* Test des scénario :

    Feature Affichage :
        - Aucun atelier créé
*/

const webdriver = require('selenium-webdriver'),
    By = webdriver.By,
    until = webdriver.until;

const driver = new webdriver.Builder()
    .forBrowser('chrome')
    .build();

driver.get('http://localhost:3000/');

driver.findElements(By.className("li")).then((articles) => {
    if(articles.length>0){
        console.log("Test échoué");
    }else{
        console.log("Test validé");
    }
    driver.quit();
})

