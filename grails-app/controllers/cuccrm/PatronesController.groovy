package cuccrm

class PatronesController {

    def index() {
     def clima= new WeatherData()
     def actual= new  CurrentConditionsDisplay(clima)
     def estadisticas=new StatisticsDisplay(clima)
     clima.setMeasurements(80,65,30.4f)
     clima.setMeasurements(82,70,29.2f)
     clima.setMeasurements(78,90,29.2f)
     
     render text: "<h1>ok </h1>"
    }

interface Observer {
    def update(float temperature, float humidity, float pressure)
}
interface Subject {
    def registerObserver(Observer observer)
    def removeObserver(Observer observer)
    def notifyObservers()
}

interface DisplayElement {

    def display()

} 
class CurrentConditionsDisplay implements Observer, DisplayElement {

    float temperature
    float humidity
    Subject weatherData

    public CurrentConditionsDisplay(Subject weatherData) {
        this.weatherData = weatherData
        weatherData.registerObserver(this)
    }

    def update(float temperature, float humidity, float pressure) {
        this.temperature = temperature
        this.humidity = humidity
        display()
    }

    def display() {
        println "Current conditions: ${temperature}C degrees and ${humidity}%"
    }
}
final class WeatherData implements Subject {

    float temperature
    float humidity
    float pressure

    def observers = []

    def registerObserver(Observer observer) {
        observers.add(observer)
    }

    def removeObserver(Observer observer) {
        observers.remove(observer)
    }

    def notifyObservers() {
        observers.each {
            it.update(temperature, humidity, pressure)
        }
    }

    def measurementsChanged() {
        notifyObservers()
    }

    def setMeasurements(float temperature, float humidity, float pressure) {
        this.temperature = temperature
        this.humidity = humidity
        this.pressure = pressure
        measurementsChanged()
    }
}  
class StatisticsDisplay implements Observer, DisplayElement {

    def temperatures = []
    Subject weatherData

    public StatisticsDisplay(Subject weatherData) {
        this.weatherData = weatherData
        weatherData.registerObserver(this)
    }

    def update(float temperature, float humidity, float pressure) {
        temperatures.add(temperature)
        display()
    }

    def display() {
        println "Average/Max/Minimum temperatures:" +
                   "${temperatures.sum()/temperatures.size()}/${temperatures.max()}/${temperatures.min()}"
    }
}
}



