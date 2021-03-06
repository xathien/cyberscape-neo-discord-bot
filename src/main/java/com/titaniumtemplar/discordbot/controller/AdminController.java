package com.titaniumtemplar.discordbot.controller;

import com.titaniumtemplar.discordbot.discord.Myra;
import com.titaniumtemplar.discordbot.model.character.CharStats;
import com.titaniumtemplar.discordbot.service.CyberscapeService;
import java.util.Map;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import lombok.extern.slf4j.Slf4j;
import net.dv8tion.jda.api.entities.Guild;
import net.dv8tion.jda.api.entities.User;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("admin")
public class AdminController {

	@Inject
	Myra myra;

	@Inject
	CyberscapeService service;

	@Inject
	ServletContext servletContext;

	@GetMapping("")
	String admin(Authentication auth, Model model) {
		OAuth2User principal = (OAuth2User) auth.getPrincipal();
		String userId = (String) principal.getAttributes().get("id");

		User user = myra.getUser(userId);
		Map<String, Guild> adminGuilds = myra.getAdminGuilds(user);
		if (adminGuilds.isEmpty()) {
			throw new AccessDeniedException("User " + user.getName() + " is not an administrator.");
		}

		Map<String, String> nextCombats = myra.getNextCombats(adminGuilds.values());

		model.addAttribute("adminGuilds", adminGuilds);
		model.addAttribute("nextCombats", nextCombats);
		return "admin";
	}

	@GetMapping("character")
	String adminCharsheet(Authentication auth, Model model) {
		OAuth2User principal = (OAuth2User) auth.getPrincipal();
		String userId = (String) principal.getAttributes().get("id");

		User user = myra.getUser(userId);
		Map<String, Guild> adminGuilds = myra.getAdminGuilds(user);
		if (adminGuilds.isEmpty()) {
			throw new AccessDeniedException("User " + user.getName() + " is not an administrator.");
		}
		CharStats character = service.getCharacter("~template~");

		model.addAttribute("character", character);
		model.addAttribute("admin", true);
		model.addAttribute("urlPrefix", servletContext.getContextPath() + "/admin");
		model.addAttribute("statConfig", service.getStatConfig());
		return "charsheet";
	}
}
