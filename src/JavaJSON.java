import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;


public class JavaJSON {
	
	public static void main(String[] args) throws Exception {
		Map<String, Object> json = new HashMap<String, Object>();
		json.put("Not a number", Double.NaN);
		json.put("To infinity etc", Double.POSITIVE_INFINITY);
		ObjectMapper om = new ObjectMapper();
		om.configure(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS, true);
		om.configure(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS, false);
		System.out.println("Java testing " + json + ":");
		System.out.println("ObjectMapper.writeValueAsString()");
		System.out.println(om.writeValueAsString(json));
		System.out.println("ObjectMapper.readValue()");
		System.out.println(om.readValue(
				"{\"Not a number\": NaN, \"To infinity etc\": Infinity}", Map.class));
		
	}

}
