package br.clicaqui;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.flex.security.AuthenticationResultUtils;
import org.springframework.security.GrantedAuthority;
import org.springframework.security.userdetails.UserDetails;

import br.clicaqui.security.AuthenticationHelper;
import br.clicaqui.security.vo.AuthorizationData;

public class SecureService {
	
	public AuthorizationData getUserDetails() {  
//		Map<String,Object> userSessionDetails = new HashMap<String, Object>();
//		
//		ArrayList roles = new ArrayList();
//		userSessionDetails = AuthenticationResultUtils.getAuthenticationResult();
//		GrantedAuthority[] grantedRoles = userDetails.getAuthorities();
//        for (int i = 0; i < grantedRoles.length; i++) {
//            roles.add(grantedRoles[i].getAuthority());
//        }
		AuthenticationHelper auh = new AuthenticationHelper();

		 return auh.checkUserIsAllreadyAuthenticated(); 
	}
}
