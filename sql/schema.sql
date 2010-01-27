DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
	shop_entry_code int default 0,
	shop_code int default 0,
	medianet_id int default 0,
	track_code varchar(30) default null,
	text varchar(30) default null,
	club_full_name varchar(30) default null,
	url_prod varchar(30) default null,
	team_id int default 0 primary key,
	postal_code int default 0,
	timezone varchar(30) default null,
	club_common_url varchar(30) default null,
	esp_common_url varchar(30) default null,
	url_esp varchar(30) default null,
	tertiary varchar(30) default null,
	esp_common_name varchar(30) default null,
	primary_link varchar(30) default null,
	display_code varchar(30) default null,
	newsletter_group_id int default 0,
	team_code varchar(30) default null,
	club_id int default 0,
	id int default 0,
	field varchar(30) default null,
	club_common_name varchar(30) default null,
	location varchar(30) default null,
	city varchar(30) default null,
	division varchar(30) default null,
	name_display_long varchar(30) default null,
	club varchar(30) default null,
	track_filter varchar(30) default null,
	`primary` varchar(30) default null,
	es_track_code varchar(30) default null,
	newsletter_category_id varchar(30) default null,
	address varchar(30) default null,
	club_spanish_name varchar(30) default null,
	secondary varchar(30) default null,
	state_province varchar(30) default null,
	league varchar(30) default null,
	phone varchar(30) default null,
	country varchar(30) default null,
	name_display_short varchar(30) default null,
	url_cache varchar(30) default null,
	historical_team_code varchar(30) default null
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
	name_matrilineal varchar(50) default null,
	h3b int default 0,
	death_city varchar(50) default null,
	ab int default 0,
	name_first varchar(50) default null,
	weight int default 0,
	status_code char(1) default null,
	active_sw enum('Y', 'N'),
	ao int default 0,
	tb int default 0,
	primary_position char(1) default null,
	go int default 0,
	team_id int default 0,
	death_state varchar(50) default null,
	bats enum('R', 'L', 'S'),
	birth_country varchar(50) default null,
	name_display_last_first_html varchar(50) default null,
	player_id int default 0,
	team_name varchar(50) default null,
	avg double default 0,
	team_code varchar(3) default null,
	birth_city varchar(50) default null,
	name_display_roster varchar(50) default null,
	death_country varchar(50) default null,
	hbp int default 0,
	birth_state varchar(50) default null,
	name_middle varchar(50) default null,
	pro_debut_date date default null,
	h int default 0,
	name_display_first_last_html varchar(50) default null,
	name_prefix varchar(50) default null,
	high_school varchar(100) default null,
	name_use varchar(50) default null,
	cs int default 0,
	status varchar(50) default null,
	name_nick varchar(50) default null,
	throws enum('R', 'L'),
	name_display_roster_html varchar(50) default null,
	end_date date default null,
	ops double default 0,
	hr int default 0,
	height_inches int default 0,
	name_full varchar(50) default null,
	primary_sport_code varchar(10) default null,
	sb int default 0,
	r int default 0,
	go_ao double default 0,
	file_code varchar(10) default null,
	status_date date default null,
	height_feet int default 0,
	name_last varchar(50) default null,
	g int default 0,
	gender enum('M', 'F'),
	ibb int default 0,
	death_date date default null,
	name_title varchar(50) default null,
	name_display_last_first varchar(50) default null,
	start_date date default null,
	bb int default 0,
	team_abbrev varchar(3) default null,
	name_display_first_last varchar(50) default null,
	so int default 0,
	rbi int default 0,
	primary_position_txt varchar(2) default null,
	birth_date date default null,
	college varchar(100) default null,
	slg double default null,
	jersey_number int default null,
	obp double default null,
	h2b int default 0,
	np int default 0,
	ir int default 0,
	cg int default 0,
	w int default 0,
	l int default 0,
	s int default 0,
	er int default 0,
	sho int default 0,
	era double default 0,
	sv int default 0,
	svo int default 0,
	wp int default 0,
	gs int default 0,
	whip double default 0,
	irs int default 0,
	ip double default 0,
	hb int default 0,
	tbf int default 0,
	bk int default 0,
	gidp int default 0
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `log_batter`;
CREATE TABLE `log_batter`(
	PLAYER_ID int default 0,
	BB int default 0,
	HR int default 0,
	IBB int default 0,
	CS int default 0,
	OPP_TEAM_DISPLAY_FULL varchar(35) default '',
	DATE varchar(35) default '',
	GO_AO double default 0,
	HBP int default 0,
	GAME_TYPE char(1) default '',
	TB int default 0,
	OPP_TEAM_DISPLAY_SHORT varchar(35) default '',
	H3B int default 0,
	AB int default 0,
	H int default 0,
	AO int default 0,
	R int default 0,
	RBI int default 0,
	GO int default 0,
	GAME_ID varchar(100) default '',
	SLG double default 0,
	OBP double default 0,
	OPP varchar(3) default '',
	OPS double default 0,
	HOME_AWAY enum('H', 'A'),
	SO int default 0,
	GAME_DATE date,
	SB int default 0,
	AVG double default 0,
	OPP_TEAM_ID int default 0,
	H2B	 int default 0,
	UNIQUE KEY record (GAME_ID, PLAYER_ID)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `log_pitcher`;
CREATE TABLE `log_pitcher`(
	PLAYER_ID int default 0,
	BB int default 0,
	HR int default 0,
	IBB int default 0,
	WP int default 0,
	BK int default 0,
	DATE varchar(35) default '',
	ERA double default 0,
	OPP_TEAM_DISPLAY_FULL varchar(35) default '',
	HB int default 0,
	GO_AO double default 0,
	GIDP int default 0,
	GAME_TYPE char(1) default '',
	H int default 0,
	NP int default 0,
	SHO int default 0,
	IRS int default 0,
	OPP_TEAM_DISPLAY_SHORT varchar(35) default '',
	SVO int default 0,
	AB int default 0,
	GS int default 0,
	G int default 0,
	IP double default 0,
	IR int default 0,
	CG int default 0,
	L int default 0,
	AO int default 0,
	S int default 0,
	R int default 0,
	W int default 0,
	GO int default 0,
	GAME_ID varchar(100) default '',
	WHIP double default 0,
	ER int default 0,
	OPP varchar(3) default '',
	SV int default 0,
	HOME_AWAY enum('H', 'A'),
	SO int default 0,
	GAME_DATE date,
	AVG double default 0,
	OPP_TEAM_ID int default 0,
	TBF int default 0,
	UNIQUE KEY record (GAME_ID, PLAYER_ID)
) ENGINE = InnoDB;
