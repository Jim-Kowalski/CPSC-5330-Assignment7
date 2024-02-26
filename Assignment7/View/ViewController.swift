//
//  ViewController.swift
//  Assignment7
//
//  Created by James Kowalski on 2/22/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate 
{
    
    var cities = [
        CityState("Auburn", "AL","Auburn is a city in eastern Alabama. On the Auburn University campus, the sprawling Donald E. Davis Arboretum has a collection of native plants. The Jonathan Bell Lovelace Museum documents the universityâ€™s athletics history. The Jule Collins Smith Museum has art from the 18thâ€“21st centuries. South of Auburn is Chewacla State Park with trails and a large lake. Southwest, Tuskegee National Forest is home to wild deer."),
        CityState("Atlanta", "GA","Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement. Atlanta History Center chronicles the city's past, and the Martin Luther King Jr. National Historic Site is dedicated to the African-American leaderâ€™s life and times. Downtown, Centennial Olympic Park, built for the 1996 Olympics, encompasses the massive Georgia Aquarium."),
        CityState("Boston", "MA","Boston, officially the City of Boston, is the capital and most populous city in the Commonwealth of Massachusetts in the United States. The city serves as the cultural and financial center of the New England region of the Northeastern United States. It has an area of 48.4 sq mi and a population of 675,647 as of 2020."),
        CityState("Jackson", "MS","Jackson is the capital city of Mississippi. The statewide Mississippi Freedom Trail runs through the city, encompassing a number of historic sites that were significant in the civil rights movement. These include the Medgar Evers Home Museum and the landmark Mississippi State Capitol building. In leafy LeFleurâ€™s Bluff State Park, the Mississippi Museum of Natural Science includes an aquarium and nature trails."),
        CityState("Nashville", "TN", "Nashville is the capital of the U.S. state of Tennessee and home to Vanderbilt University. Legendary country music venues include the Grand Ole Opry House, home of the famous â€œGrand Ole Opryâ€ stage and radio show. The Country Music Hall of Fame and Museum and historic Ryman Auditorium are Downtown, as is the District, featuring honky-tonks with live music and the Johnny Cash Museum, celebrating the singer's life,"),
        CityState("Chicago", "IL","Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline punctuated by skyscrapers such as the iconic John Hancock Center, 1,451-ft. Willis Tower (formerly the Sears Tower) and the neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute of Chicago with its noted Impressionist and Post-Impressionist works."),
        CityState("Detroit", "MI","Detroit is the largest city in the midwestern state of Michigan. Near Downtown, the neoclassical Detroit Institute of Arts is famed for the Detroit Industry Murals painted by Diego Rivera, and inspired by the cityâ€™s ties to the auto industry, giving it the nickname \"Motor City.\" Detroit is also the birthplace of Motown Records, whose chart-topping history is on display at their original headquarters, Hitsville U.S.A."),
        CityState("New York", "NY","New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough thatâ€™s among the worldâ€™s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square."),
        CityState("Houston", "TX","Houston is a large metropolis in Texas, extending to Galveston Bay. Itâ€™s closely linked with the Space Center Houston, the coastal visitor center at NASAâ€™s astronaut training and flight control complex. The cityâ€™s relatively compact Downtown includes the Theater District, home to the renowned Houston Grand Opera, and the Historic District, with 19th-century architecture and upscale restaurants."),
        CityState("Denver", "CO","Denver, the capital of Colorado, is an American metropolis dating to the Old West era. Larimer Square, the cityâ€™s oldest block, features landmark 19th-century buildings. Museums include the Denver Art Museum, an ultramodern complex known for its collection of indigenous works, and the mansion of famed Titanic survivor Molly Brown. Denver is also a jumping-off point for ski resorts in the nearby Rocky Mountains."),
        CityState("Honolulu", "HI","Honolulu, on the island of Oahuâ€™s south shore, is capital of Hawaii and gateway to the U.S. island chain. The Waikiki neighborhood is its center for dining, nightlife and shopping, famed for its iconic crescent beach backed by palms and high-rise hotels, with volcanic Diamond Head crater looming in the distance. Sites relating to the World War II attack on Pearl Harbor include the USS Arizona Memorial.")
    ]
    var selectedCityState: CityState = CityState("", "", "")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = cities[indexPath.row].City
        content.secondaryText = cities[indexPath.row].State
        cell.contentConfiguration = content
        return cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCityState = self.cities[indexPath.row]
        performSegue(withIdentifier: "toSecondView", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondView" {
            let navigation = segue.destination as! SecondViewController
            navigation.selectedCityState=self.selectedCityState
         }
    }

    
}

