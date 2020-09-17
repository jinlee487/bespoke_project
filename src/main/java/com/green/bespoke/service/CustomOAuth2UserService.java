package com.green.bespoke.service;

import java.util.Collections;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.green.bespoke.domain.user.Member;
import com.green.bespoke.domain.user.MemberRepository;
import com.green.bespoke.domain.user.SessionMember;
import com.green.bespoke.oauth.OAuthAttributes;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {
    private final MemberRepository memberRepository;
    private final HttpSession httpSession;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2UserService<OAuth2UserRequest, ?> delegate = new DefaultOAuth2UserService();
        OAuth2User oAuth2User = delegate.loadUser(userRequest);

        String registrationId = userRequest.getClientRegistration().getRegistrationId(); // 소셜 서비스 구분
        String userNameAttributeName = userRequest.getClientRegistration().getProviderDetails()
                .getUserInfoEndpoint().getUserNameAttributeName(); // PK 의미. 구글은 기본 sub, 나머진 기본지원 X

        OAuthAttributes attributes = OAuthAttributes.of(registrationId, userNameAttributeName, oAuth2User.getAttributes()); // Attribute를 담을 클래스
        Member member = saveOrUpdate(attributes);
        httpSession.setAttribute("member", new SessionMember(member));
        return new DefaultOAuth2User(
                Collections.singleton(new SimpleGrantedAuthority(member.getRoleKey())),
                attributes.getAttributes(),
                attributes.getNameAttributeKey());
    }


    private Member saveOrUpdate(OAuthAttributes attributes) {
    	Member user = memberRepository.findByEmail(attributes.getEmail())
    			.map(entity -> entity.update(attributes.getGoogle(),attributes.getNaver(),attributes.getKakao(),attributes.getFacebook(), 
    					attributes.getPicture_google(), attributes.getPicture_naver(), attributes.getPicture_kakao(), attributes.getPicture_facebook()))
    			.orElse(attributes.toEntity());
        return memberRepository.save(user);
    }
}