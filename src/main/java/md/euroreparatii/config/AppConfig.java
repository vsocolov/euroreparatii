package md.euroreparatii.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.Serializable;

@Component(AppConfig.APP_CONFIG_NAME)
public class AppConfig implements Serializable {
    public static final String APP_CONFIG_NAME = "appConfig";

    @Value("${google.maps.key}")
    private String googleMapsKey;

    public String getGoogleMapsKey() {
        return googleMapsKey;
    }

    public void setGoogleMapsKey(String googleMapsKey) {
        this.googleMapsKey = googleMapsKey;
    }
}
