package ver6;
import org.springframework.stereotype.Component;
@Component
public class KoreaTire implements Tire{
@Override
public String getModel() {
	
	return "Korea";
}
}
