package ver5;
import org.springframework.stereotype.Component;
@Component
public class KoreaTire implements Tire{
@Override
public String getModel() {
	
	return "Korea";
}
}
