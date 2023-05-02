INSERT INTO user_account
(created_at,created_by,modified_at,modified_by,deleted_yn,email, password, name, nickname, zip_code, address1, address2, address_etc, oauth2_provider_info, roles, phone_number, business_name, business_number)
VALUES
(now(),'user', now(),'user','N','user@user.com', '{noop}1234', '김', '123', '12345', 'Gangnam', 'South Korea', '2345',  null, 'USER', null,null,null),
(now(),'seller', now(),'seller','N','seller@seller.com', '{noop}1234', '이', '345', '3456', 'Gangnam', 'South Korea', '345',  null, 'SELLER','010-1234-1234','페크페크','123-12345-123'),
(now(),'admin', now(),'user','N','admin@admin.com', '{noop}1234', '최', '567', '6574', 'Gangnam', 'South Korea', '4356',  null, 'ADMIN',null,null,null);


insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-05-06', '2022-06-20', 'Fidelio Kellie', 'Adrian Thumann', '6 Superior Street', 'Room 1872', 'Mauv', '401', 'sguerreau2@sbwire.com', 'Silvanus Guerreau', 'sguerreau2',  '{noop}1234', null, 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-12-27', '2022-12-27', 'Sinclare Amsden', 'Avram Pierton', '5872 Veith Court', 'PO Box 16601', 'Mauv', '2', 'gcosby3@bbb.org', 'Gustie Cosby', 'gcosby3',  '{noop}1234', null, 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2023-02-22', '2022-11-25', 'Frederico Masterson', 'Rhett McKnish', '685 Fallview Drive', '19th Floor', 'Fuscia', '952', 'lcranmer1@intel.com', 'Lief Cranmer', 'lcranmer1', '{noop}1234', null, 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-12-07', '2022-12-29', 'Flossie Rule', 'Flora Barsham', '78 Longview Lane', 'PO Box 39856', 'Violet', '3', 'tcarley0@mapy.cz', 'Tabor Carley', 'tcarley0',  '{noop}1234', null, 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-04-24', '2023-01-03', 'Calvin Willars', 'Lauren Arsmith', '388 Manufacturers Pass', 'Apt 497', 'Goldenrod', '2616', 'epredohl4@vk.com', 'Esta Predohl', 'epredohl4',  '{noop}1234', null, 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2023-03-16', '2023-02-07', 'Julie Ensor', 'Lalo Blachford', '651 Northview Terrace', 'Suite 25', 'Purple', '469', 'kkaspar5@marketwatch.com', 'Kai Kaspar', 'kkaspar5',  '{noop}1234', null, 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-06-29', '2022-12-24', 'Jody Caves', 'Gilberta Driscoll', '43784 Bluejay Hill', 'PO Box 6729', 'Green', '6909', 'elempenny6@myspace.com', 'Eddi Lempenny', 'elempenny6', '{noop}1234', 'NAVER', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-08-10', '2022-07-26', 'Andy Coote', 'Arni Duffell', '57142 3rd Crossing', '20th Floor', 'Turquoise', '636', 'csyder7@gravatar.com', 'Cordi Syder', 'csyder7', '{noop}1234', 'GOOGLE', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-06-02', '2023-01-03', 'Tara Doyland', 'Kissie Bome', '16749 Schmedeman Crossing', 'PO Box 46633', 'Yellow', '9063', 'grustich8@yelp.com', 'Gae Rustich', 'grustich8', '{noop}1234', 'KAKAO', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-06-07', '2022-09-03', 'Hayward Shuttell', 'Natalee Haile', '7 Coleman Parkway', 'Apt 1477', 'Crimson', '8164', 'flaxson9@pinterest.com', 'Filmer Laxson', 'flaxson9', '{noop}1234', 'NAVER', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2023-04-04', '2022-11-30', 'Helena Pavlovsky', 'Felicity Castillon', '11 Waubesa Street', 'Suite 32', 'Teal', '98', 'aclemmeya@forbes.com', 'Ardeen Clemmey', 'aclemmeya', '{noop}1234', 'NAVER', 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-06-16', '2022-08-29', 'Dorita Blunsum', 'Tyrone Cuthbert', '35 Stephen Street', 'PO Box 48961', 'Fuscia', '6235', 'lsollisb@hhs.gov', 'Luis Sollis', 'lsollisb', '{noop}1234', 'KAKAO', 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-07-14', '2022-07-16', 'Karil Besque', 'Lib Ottey', '481 Melby Court', 'Apt 868', 'Violet', '7435', 'asiddaleyc@mayoclinic.com', 'Aimil Siddaley', 'asiddaleyc',  '{noop}1234', 'GOOGLE', 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-11-11', '2022-06-27', 'Marthe Hirjak', 'Titos Jonke', '257 Redwing Alley', 'Room 1851', 'Teal', '47', 'tgaitskilld@booking.com', 'Tresa Gaitskill', 'tgaitskilld',  '{noop}1234', 'NAVER', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-11-26', '2023-02-04', 'Dot Forcade', 'Gray Robion', '040 Thierer Center', 'PO Box 84240', 'Green', '730', 'kecclese@canalblog.com', 'Keeley Eccles', 'kecclese',  '{noop}1234', 'NAVER', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-10-13', '2022-05-19', 'Avivah Divers', 'Corrie Eglington', '0 Norway Maple Lane', '7th Floor', 'Turquoise', '027', 'lpeedellf@toplist.cz', 'Lemmy Peedell', 'lpeedellf', '{noop}1234', 'KAKAO', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-04-24', '2022-10-19', 'Erl Antonias', 'Jewel Molan', '16179 Reinke Center', 'PO Box 44937', 'Turquoise', '321', 'gdeekg@sciencedaily.com', 'Gordon Deek', 'gdeekg',  '{noop}1234', 'KAKAO', 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-11-07', '2023-03-08', 'Alysia Pargeter', 'Rivkah Griffiths', '5 Dennis Plaza', 'Room 1835', 'Green', '5580', 'bellicotth@photobucket.com', 'Brittani Ellicott', 'bellicotth', '{noop}1234', 'NAVER', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-10-16', '2023-02-08', 'Eleonore Das', 'Liesa De Pero', '1 Brickson Park Street', '3rd Floor', 'Blue', '7919', 'cpeeki@mac.com', 'Clarita Peek', 'cpeeki',  '{noop}1234', 'GOOGLE', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-07-07', '2022-12-01', 'Adham Rushbrooke', 'Vivianna Blankhorn', '0385 Southridge Circle', 'Suite 81', 'Aquamarine', '76529', 'alandmanj@mail.ru', 'Arv Landman', 'alandmanj', '{noop}1234', 'KAKAO', 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2023-02-27', '2023-03-24', 'Chiarra Bore', 'Grazia Sang', '77 Burrows Center', 'Room 1775', 'Khaki', '564', 'lcawsek@edublogs.org', 'Lorilee Cawse', 'lcawsek',  '{noop}1234', 'NAVER', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-07-12', '2023-01-13', 'Mandy Vannah', 'Burnaby Mulder', '628 Miller Street', 'Apt 397', 'Green', '4305', 'mbattsl@bing.com', 'Marcelle Batts', 'mbattsl', '{noop}1234', 'GOOGLE', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-12-06', '2023-03-08', 'Danielle Armit', 'Kaleena Houldey', '421 Namekagon Park', 'Apt 296', 'Khaki', '9906', 'nrosenvasserm@howstuffworks.com', 'Noam Rosenvasser', 'nrosenvasserm',  '{noop}1234', 'NAVER', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-07-03', '2022-06-01', 'Kennedy Brashaw', 'Joscelin Gillow', '733 Waywood Road', '12th Floor', 'Khaki', '43928', 'vmorphetn@yellowpages.com', 'Vin Morphet', 'vmorphetn', '{noop}1234', 'KAKAO', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-08-11', '2022-08-16', 'Valerie Chatelet', 'Christy Panting', '788 Dawn Way', 'PO Box 60449', 'Pink', '3202', 'dnorawayo@reuters.com', 'Debee Noraway', 'dnorawayo', '{noop}1234', 'GOOGLE', 'ADMIN', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-11-25', '2022-09-11', 'Raimund Levine', 'Christiano Heffernon', '9644 Maple Crossing', 'PO Box 77030', 'Maroon', '9', 'tcicculip@cyberchimps.com', 'Terrijo Cicculi', 'tcicculip',  '{noop}1234', 'GOOGLE', 'USER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2023-02-27', '2023-03-25', 'Laney Vedyasov', 'Isabel Bilovus', '24 Riverside Circle', 'Apt 221', 'Aquamarine', '2709', 'irenardq@imdb.com', 'Isidor Renard', 'irenardq', '{noop}1234', 'GOOGLE', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-08-15', '2023-01-04', 'Torre Chalcraft', 'Ruperta Willcock', '84 Ridgeway Road', '1st Floor', 'Maroon', '6013', 'lsinnottr@theglobeandmail.com', 'Linnell Sinnott', 'lsinnottr',  '{noop}1234', 'GOOGLE', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2023-04-03', '2022-12-31', 'Georges Hynam', 'Louie Madre', '7 Everett Avenue', '9th Floor', 'Green', '25202', 'bosborns@jimdo.com', 'Bobby Osborn', 'bosborns', '{noop}1234', 'GOOGLE', 'SELLER', null, null, null);
insert into user_account (deleted_yn, created_at, modified_at, created_by, modified_by, address1, address2, address_etc, zip_code, email, name, nickname,  password, oauth2_provider_info, roles, phone_number, business_name, business_number) values ('N', '2022-07-25', '2023-03-24', 'Nancey Ochterlony', 'Ester McConnel', '84489 Packers Terrace', 'PO Box 57844', 'Orange', '7', 'sgrzest@typepad.com', 'Son Grzes', 'sgrzest', '{noop}1234', 'GOOGLE', 'SELLER', null, null, null);




INSERT INTO item (created_at,created_by,modified_at,modified_by,deleted_yn, item_name, price, item_amount, item_detail, item_status, user_account_id) VALUES
    (now(),'페크페크', now(),'페크페크','N','item1', 10000, 10, 'item1 detail', 'SELLING', 2);

INSERT INTO item_image (created_at,created_by,modified_at,modified_by,deleted_yn,unique_name, original_name, image_url, representative_image_yn, item_id) VALUES
                                                                                      (now(),'페크페크', now(),'페크페크','N', 'file:///Users/Rene/Documents/rene/projectFiles/jpa-shopping-practice-files/34124.jpeg', '34124.jpeg', 'file:///Users/Rene/Documents/rene/projectFiles/jpa-shopping-practice-files/34124.jpeg', 'Y', 1),
                                                                                      (now(),'페크페크', now(),'페크페크','N', 'file:///Users/Rene/Documents/rene/projectFiles/jpa-shopping-practice-files/1224.jpeg', '1224.jpeg', 'images/item/1224.jpeg', 'N', 1),
                                                                                      (now(),'페크페크', now(),'페크페크','N', 'file:///Users/Rene/Documents/rene/projectFiles/jpa-shopping-practice-files/스크린샷 2023-04-19 오후 3.12.41.png', '스크린샷 2023-04-19 오후 3.12.41.png', '/images/item/스크린샷 2023-04-19 오후 3.12.41.png', 'N', 1),
                                                                                      (now(),'페크페크', now(),'페크페크','N', 'file:///Users/Rene/Documents/rene/projectFiles/jpa-shopping-practice-files/53232.jpeg', '53232.jpeg', '', 'N', 1),
                                                                                      (now(),'페크페크', now(),'페크페크','N', 'file:///Users/Rene/Documents/rene/projectFiles/jpa-shopping-practice-files/KakaoTalk_Photo_2023-01-05-22-29-06.jpeg', 'KakaoTalk_Photo_2023-01-05-22-29-06.jpeg', '', 'N',1);


insert into article( created_at, created_by,  modified_at, modified_by, deleted_yn, category_type, title, content, hit, user_account_id) VALUES
(now(),'테스트 유저', now(),'테스트 유저1','N','DOG', '테스트용 타이틀입니다1', '테스트용 내용입니다1', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저2','N','DOG', '테스트용 타이틀입니다2', '테스트용 내용입니다2', 1, 1),
(now(),'테스트 유저', now(),'테스트 유저3','N','CAT', '테스트용 타이틀입니다3', '테스트용 내용입니다3', 2, 1),
(now(),'테스트 유저', now(),'테스트 유저4','N','CAT', '테스트용 타이틀입니다4', '테스트용 내용입니다4', 3, 1),
(now(),'테스트 유저', now(),'테스트 유저5','N','CAT', '테스트용 타이틀입니다5', '테스트용 내용입니다5', 4, 2),
(now(),'테스트 유저', now(),'테스트 유저6','N','CAT', '테스트용 타이틀입니다6', '테스트용 내용입니다6', 5, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다7', '테스트용 내용입니다7', 1, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다8', '테스트용 내용입니다8', 2, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다9', '테스트용 내용입니다9', 3, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','CAT', '테스트용 타이틀입니다10', '테스트용 내용입니다10', 4, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다11', '테스트용 내용입니다11', 10, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다12', '테스트용 내용입니다12', 10, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다13', '테스트용 내용입니다13', 10, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다14', '테스트용 내용입니다14', 10, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다15', '테스트용 내용입니다15', 0, 2),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다16', '테스트용 내용입니다16', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다17', '테스트용 내용입니다17', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다18', '테스트용 내용입니다18', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다19', '테스트용 내용입니다19', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다20', '테스트용 내용입니다20', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다21', '테스트용 내용입니다21', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다22', '테스트용 내용입니다22', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다23', '테스트용 내용입니다23', 0, 1),
(now(),'테스트 유저', now(),'테스트 유저','N','DOG', '테스트용 타이틀입니다24', '테스트용 내용입니다24', 0, 1);

INSERT INTO article_image (created_at,created_by,modified_at,modified_by,deleted_yn,unique_name, original_name, image_url, representative_image_yn, article_id) VALUES
                                                                                                                                                              (now(),'페크페크', now(),'페크페크','N', 'abcde-34124.jpeg', '34124.jpeg', '/images/item/34124.jpeg', 'Y', 1),
                                                                                                                                                              (now(),'페크페크', now(),'페크페크','N', 'abcde-1224.jpeg', '1224.jpeg', '/images/item/1224.jpeg', 'N', 1),
                                                                                                                                                              (now(),'페크페크', now(),'페크페크','N', 'abcde-스크린샷 2023-04-19 오후 3.12.41.png', '스크린샷 2023-04-19 오후 3.12.41.png', '/images/item/스크린샷 2023-04-19 오후 3.12.41.png', 'N', 1),
                                                                                                                                                              (now(),'페크페크', now(),'페크페크','N', 'abcde-53232.jpeg', '53232.jpeg', '/images/item/53232.jpeg', 'N', 2),
                                                                                                                                                              (now(),'페크페크', now(),'페크페크','N', 'abcde-KakaoTalk_Photo_2023-01-05-22-29-06.jpeg', 'KakaoTalk_Photo_2023-01-05-22-29-06.jpeg', '/images/item/KakaoTalk_Photo_2023-01-05-22-29-06.jpeg', 'N',2);

insert into hashtag(created_at,created_by,modified_at,modified_by,deleted_yn, hash_tag_name) VALUES
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag1'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag2'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag3'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag4'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag5'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag6'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag7'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag8'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag9'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag10'),
(now(),'테스트 유저', now(),'테스트 유저','N', 'hashtag11');


insert into article_hashtag(article_id, hashtag_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(1,2),
(1,3),
(2,4),
(2,5),
(5,1),
(6,6),
(7,7);