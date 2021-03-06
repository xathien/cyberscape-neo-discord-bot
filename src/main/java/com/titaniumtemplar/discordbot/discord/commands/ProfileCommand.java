package com.titaniumtemplar.discordbot.discord.commands;

import static com.titaniumtemplar.discordbot.discord.DiscordUtils.deleteMessage;
import static com.titaniumtemplar.discordbot.discord.DiscordUtils.sendDm;

import com.titaniumtemplar.discordbot.discord.Myra;
import com.titaniumtemplar.discordbot.model.exception.NoSuchCharacterException;
import com.titaniumtemplar.discordbot.service.CyberscapeService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import net.dv8tion.jda.api.entities.Member;
import net.dv8tion.jda.api.entities.Message;
import net.dv8tion.jda.api.entities.User;

@RequiredArgsConstructor(staticName = "withArgs")
public class ProfileCommand implements DiscordCommand {

	private final List<String> splitCommand;

	@Override
	public void run(
		CyberscapeService service,
		Myra myra,
		Message message,
		User author,
		Member member) {
		try {
			try {
				service.getCharacter(author.getId());
			} catch (NoSuchCharacterException ex) {
				sendDm(author, "No profile found! Please use \".register\" to register an account.");
				return;
			}

			sendDm(author, "Check your profile at <" + myra.getBaseUrl() + "profile/>!");

		} finally {
			deleteMessage(message);
		}
	}

}
