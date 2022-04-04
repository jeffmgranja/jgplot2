#' List of color palettes that can be used in plots
#' 
#' A collection of some original and some borrowed color palettes to provide appealing color aesthetics for plots in ArchR
#' 
#' @export
ArchR_palettes_copy <- list(

  #https://github.com/GreenleafLab/ArchR/blob/master/R/ColorPalettes.R

  #DISCLOSURE: This is a collection of palettes that includes some original palettes and some palettes originally
  #implemented by others in other packages.
  #They are included here for convenience because they help improve plot aesthetics.

  #NOTE: all palettes included in the "Primarily Continuous Palettes" section should also work for discrete usage but not vice versa.
  #Each continuous palette has been ordered by color to generate a visually appealing discrete palette.
  
  #---------------------------------------------------------------
  # Primarily Discrete Palettes
  #---------------------------------------------------------------
  
  #20-colors
  stallion = c("1"="#D51F26","2"="#272E6A","3"="#208A42","4"="#89288F","5"="#F47D2B", "6"="#FEE500","7"="#8A9FD1","8"="#C06CAB","19"="#E6C2DC",
               "10"="#90D5E4", "11"="#89C75F","12"="#F37B7D","13"="#9983BD","14"="#D24B27","15"="#3BBCA8", "16"="#6E4B9E","17"="#0C727C", "18"="#7E1416","9"="#D8A767","20"="#3D3D3D"),

  stallion2 = c("1"="#D51F26","2"="#272E6A","3"="#208A42","4"="#89288F","5"="#F47D2B", "6"="#FEE500","7"="#8A9FD1","8"="#C06CAB","19"="#E6C2DC",
               "10"="#90D5E4", "11"="#89C75F","12"="#F37B7D","13"="#9983BD","14"="#D24B27","15"="#3BBCA8", "16"="#6E4B9E","17"="#0C727C", "18"="#7E1416","9"="#D8A767"),

  calm = c("1"="#7DD06F", "2"="#844081", "3"="#688EC1", "4"="#C17E73", "5"="#484125", "6"="#6CD3A7", "7"="#597873","8"="#7B6FD0", "9"="#CF4A31", "10"="#D0CD47",
          "11"="#722A2D", "12"="#CBC594", "13"="#D19EC4", "14"="#5A7E36", "15"="#D4477D", "16"="#403552", "17"="#76D73C", "18"="#96CED5", "19"="#CE54D1", "20"="#C48736"),

  kelly = c("1"="#FFB300", "2"="#803E75", "3"="#FF6800", "4"="#A6BDD7", "5"="#C10020", "6"="#CEA262", "7"="#817066", "8"="#007D34", "9"="#F6768E", "10"="#00538A",
          "11"="#FF7A5C", "12"="#53377A", "13"="#FF8E00", "14"="#B32851", "15"="#F4C800", "16"="#7F180D", "17"="#93AA00", "18"="#593315", "19"="#F13A13", "20"="#232C16"),

  #16-colors
  bear = c("1"="#faa818", "2"="#41a30d","3"="#fbdf72", "4"="#367d7d",  "5"="#d33502", "6"="#6ebcbc", "7"="#37526d",
           "8"="#916848", "9"="#f5b390", "10"="#342739", "11"="#bed678","12"="#a6d9ee", "13"="#0d74b6",
           "14"="#60824f","15"="#725ca5", "16"="#e0598b"),
  
  #15-colors
  ironMan = c("9"='#371377',"3"='#7700FF',"2"='#9E0142',"10"='#FF0080', "14"='#DC494C',"12"="#F88D51","1"="#FAD510","8"="#FFFF5F","4"='#88CFA4',
           "13"='#238B45',"5"="#02401B", "7"="#0AD7D3","11"="#046C9A", "6"="#A2A475", "15"='grey35'),
  
  circus = c("1"="#D52126", "2"="#88CCEE", "3"="#FEE52C", "4"="#117733", "5"="#CC61B0", "6"="#99C945", "7"="#2F8AC4", "8"="#332288",
             "9"="#E68316", "10"="#661101", "11"="#F97B72", "12"="#DDCC77", "13"="#11A579", "14"="#89288F", "15"="#E73F74"),

  #12-colors
  paired = c("9"="#A6CDE2","1"="#1E78B4","3"="#74C476","12"="#34A047","11"="#F59899","2"="#E11E26",
               "10"="#FCBF6E","4"="#F47E1F","5"="#CAB2D6","8"="#6A3E98","6"="#FAF39B","7"="#B15928"),
  
  #11-colors
  grove = c("11"="#1a1334","9"="#01545a","1"="#017351","6"="#03c383","8"="#aad962","2"="#fbbf45","10"="#ef6a32","3"="#ed0345","7"="#a12a5e","5"="#710162","4"="#3B9AB2"),
  
  #7-colors
  summerNight = c("1"="#2a7185", "2"="#a64027", "3"="#fbdf72","4"="#60824f","5"="#9cdff0","6"="#022336","7"="#725ca5"),
  
  #5-colors
  zissou = c("1"="#3B9AB2", "4"="#78B7C5", "3"="#EBCC2A", "5"="#E1AF00", "2"="#F21A00"), #wesanderson
  darjeeling = c("1"="#FF0000", "2"="#00A08A", "3"="#F2AD00", "4"="#F98400", "5"="#5BBCD6"), #wesanderson
  rushmore = c("1"="#E1BD6D", "5"="#EABE94", "2"="#0B775E", "4"="#35274A" , "3"="#F2300F"), #wesanderson
  captain = c("1"="grey","2"="#A1CDE1","3"="#12477C","4"="#EC9274","5"="#67001E"),

  #---------------------------------------------------------------
  # Primarily Continuous Palettes
  #---------------------------------------------------------------
  
  #10-colors
  horizon = c("1"='#000075',"4"='#2E00FF', "6"='#9408F7', "10"='#C729D6', "8"='#FA4AB5', "3"='#FF6A95', "7"='#FF8B74', "5"='#FFAC53', "9"='#FFCD32', "2"='#FFFF60'),
  
  #9-colors
  horizonExtra =c("1"="#000436","4"="#021EA9","6"="#1632FB","8"="#6E34FC","3"="#C732D5","9"="#FD619D","7"="#FF9965","5"="#FFD32B","2"="#FFFC5A"),
  blueYellow = c("1"="#352A86","2"="#343DAE","3"="#0262E0","4"="#1389D2","5"="#2DB7A3","6"="#A5BE6A","7"="#F8BA43","8"="#F6DA23","9"="#F8FA0D"),
  sambaNight = c("6"='#1873CC',"2"='#1798E5',"8"='#00BFFF',"5"='#4AC596',"1"='#00CC00',"4"='#A2E700',"9"='#FFFF00',"7"='#FFD200',"3"='#FFA500'), #buencolors
  solarExtra = c("5"='#3361A5', "7"='#248AF3', "1"='#14B3FF', "8"='#88CEEF', "9"='#C1D5DC', "4"='#EAD397', "3"='#FDB31A',"2"= '#E42A2A', "6"='#A31D1D'),  #buencolors
  whitePurple = c("9"='#f7fcfd',"6"='#e0ecf4',"8"='#bfd3e6',"5"='#9ebcda',"2"='#8c96c6',"4"='#8c6bb1',"7"='#88419d',"3"='#810f7c',"1"='#4d004b'),
  whiteBlue = c("9"='#fff7fb',"6"='#ece7f2',"8"='#d0d1e6',"5"='#a6bddb',"2"='#74a9cf',"4"='#3690c0',"7"='#0570b0',"3"='#045a8d',"1"='#023858'),
  whiteRed = c("1"="white", "2"="red"),
  comet = c("1"="#E6E7E8","2"="#3A97FF","3"="#8816A7","4"="black"),

  #7-colors
  greenBlue = c("4"='#e0f3db',"7"='#ccebc5',"2"='#a8ddb5',"5"='#4eb3d3',"3"='#2b8cbe',"6"='#0868ac',"1"='#084081'),
  
  #6-colors
  beach = c("4"="#87D2DB","1"="#5BB1CB","6"="#4F66AF","3"="#F15F30","5"="#F7962E","2"="#FCEE2B"),
  
  #5-colors
  coolwarm = c("1"="#4858A7", "4"="#788FC8", "5"="#D6DAE1", "3"="#F49B7C", "2"="#B51F29"),
  fireworks = c("5"="white","2"="#2488F0","4"="#7F3F98","3"="#E22929","1"="#FCB31A"),
  greyMagma = c("2"="grey", "4"="#FB8861FF", "5"="#B63679FF", "3"="#51127CFF", "1"="#000004FF"),
  fireworks2 = c("5"="black", "2"="#2488F0","4"="#7F3F98","3"="#E22929","1"="#FCB31A"),
  purpleOrange = c("5"="#581845", "2"="#900C3F", "4"="#C70039", "3"="#FF5744", "1"="#FFC30F")
)

#' List of color palettes that can be used in plots from buencolors
#' 
#' A collection of some original and some borrowed color palettes to provide appealing color aesthetics for plots 
#' 
#' @export
jdb_palettes_copy <- list(

  #https://github.com/caleblareau/BuenColors/blob/master/R/colors.R

  # Palettes from wesanderson that are being retained
  GrandBudapest = c("#F1BB7B", "#FD6467", "#5B1A18", "#D67236"),
  Moonrise1 = c("#F3DF6C", "#CEAB07", "#D5D5D3", "#24281A"),
  Royal1 = c("#899DA4", "#C93312", "#FAEFD1", "#DC863B"),
  Moonrise2 = c("#798E87", "#C27D38", "#CCC591", "#29211F"),
  Cavalcanti = c("#D8B70A", "#02401B", "#A2A475", "#81A88D", "#972D15"),
  Royal2 = c("#9A8822", "#F5CDB4", "#F8AFA8", "#FDDDA0", "#74A089"),
  GrandBudapest2 = c("#E6A0C4", "#C6CDF7", "#D8A499", "#7294D4"),
  Moonrise3 = c("#85D4E3", "#F4B5BD", "#9C964A", "#CDC08C", "#FAD77B"),
  Chevalier = c("#446455", "#FDD262", "#D3DDDC", "#C7B19C"),
  Zissou = c("#3B9AB2", "#78B7C5", "#EBCC2A", "#E1AF00", "#F21A00"),
  FantasticFox = c("#DD8D29", "#E2D200", "#46ACC8", "#E58601", "#B40F20"),
  Darjeeling = c("#FF0000", "#00A08A", "#F2AD00", "#F98400", "#5BBCD6"),
  Rushmore = c("#E1BD6D", "#EABE94", "#0B775E", "#35274A" ,"#F2300F"),
  BottleRocket = c("#A42820", "#5F5647", "#9B110E", "#3F5151", "#4E2A1E", "#550307", "#0C1707"),
  Darjeeling2 = c("#ECCBAE", "#046C9A", "#D69C4E", "#ABDDDE", "#000000"),
  BottleRocket2 = c("#FAD510", "#CB2314", "#273046", "#354823", "#1E1E1E"),

  # Others
  lawhoops = c('#371377','#7700FF','#9E0142',"#CB2314",'#FF0080', '#DC494C',
               '#F88D51', "#FAD510","#FFFF5F",'#88CFA4','#238B45',"#02401B",
               "#0AD7D3", "dodgerblue", "#046C9A", "#273046", "#A2A475", "#354823", 'grey35', "#1E1E1E"),

  corona = c("#1f77b4","#d62728","#2ca02c","#ff7f0e","#9467bd","#8c564b","#e377c2","#7f7f7f",
           "#bcbd22","#17becf","#ad494a","#e7ba52","#8ca252","#756bb1","#636363","#aec7e8",
           "#ff9896","#98df8a","#ffbb78","#c5b0d5","#c49c94","#f7b6d2","#c7c7c7","#dbdb8d",
           "#9edae5","#e7969c","#e7cb94","#c7e9c0","#de9ed6","#d9d9d9"),

  # Palettes from JDB
  citric = c('#03AB11', '#FFF301'),
  citrus = c('#15E602', '#FFFF33'),
  berry = c('#7700FF', '#FF0080'),
  forest = c('#E0E0E0', '#6BDA61', '#15E602'),
  white_mango = c('#FFFFFF', '#FF00FF', '#FF0000'),
  white_tango = c('#FFFFFF', '#FF00FF', '#9500FF'),
  white_grove = c('#FFFFFF', '#FFF301', '#BAE61D', '#01DF29'),
  white_jungle = c('#FFFFFF', '#FFF301', '#03AB11'),
  white_orange = c('#FFFFFF', '#FFF301', '#FF7700'),
  horizon = c('#000033', '#000075', '#0000B6', '#0000F8', '#2E00FF', '#6100FF', '#9408F7', '#C729D6', '#FA4AB5', '#FF6A95', '#FF8B74', '#FFAC53', '#FFCD32', '#FFEE11', '#FFFF60'),
  horizon_extra = c('#000033', '#000075', '#0000B6', '#0000F8', '#2E00FF', '#6100FF', '#9408F7', '#C729D6', '#FA4AB5', '#FF6A95', '#FF8B74', '#FFAC53', '#FFCD32', '#FFEE11', '#FFFF60', '#FFFFFF'),

  wolfgang_basic = c('#FFFFD9', '#EDF8B1', '#C7E9B4', '#7FCDBB', '#41B6C4', '#1D91C0', '#225EA8', '#253494', '#081D58'),
  wolfgang_extra = c('#FFFFFF', '#FCFED3', '#E3F4B1', '#ABDEB6', '#60C1BF', '#2A9EC1', '#206AAD', '#243996', '#081D58'),
  solar_flare = c('#3361A5', '#2884E7', '#1BA7FF', '#76CEFF', '#FFFFFF', '#FFE060', '#FA8E24', '#DA2828', '#A31D1D'),
  solar_glare = c('#3361A5', '#2884E7', '#1BA7FF', '#76CEFF', '#FCFCFC', '#FFE060', '#FA8E24', '#DA2828', '#A31D1D'),
  solar_basic = c('#214B85', '#1873CC', '#1E90FF', '#00BFFF', '#ACD8E5', '#D2D2D2', '#FFD700', '#ED2C2C', '#A31D1D'),
  solar_extra = c('#3361A5', '#248AF3', '#14B3FF', '#88CEEF', '#C1D5DC', '#EAD397', '#FDB31A', '#E42A2A', '#A31D1D'),
  solar_blues = c('#FCFCFC', '#C0E4FD', '#75CEFE', '#0CB9FF', '#1BA7FF', '#1E95FF', '#2884E7', '#3072C5', '#3361A5'),
  solar_rojos = c('#FCFCFC', '#FFEDB0', '#FFDF5F', '#FEC510', '#FA8E24', '#F14C2B', '#DA2828', '#BE2222', '#A31D1D'),
  samba_color = c('#1B85ED', '#1AA2F6', '#00BFFF', '#4AC596', '#00CC00', '#A7D400', '#FFD700', '#FFBE00', '#FFA500'),
  samba_night = c('#1873CC', '#1798E5', '#00BFFF', '#4AC596', '#00CC00', '#A2E700', '#FFFF00', '#FFD200', '#FFA500'),
  samba_light = c('#00D1FF', '#03AB11', '#FFF301'),

  dusk_dawn = c('#98ABC5', '#8D91AD', '#827896', '#775F80', '#6B476B', '#93575B', '#B8684A', '#DB7933', '#FF8C00'),
  dark_cyan = c('#000000', '#0E2824', '#014C44', '#0A5F4F', '#13725A', '#19997F', '#1EC0A6', '#19DFD2', '#00FFFF'),
  dark_blue = c('#000000', '#00171F', '#002F3F', '#00475F', '#005F7F', '#00779F', '#008FBF', '#00A7DF', '#00BFFF'),
  dark_citrus = c('#000000', '#22350F', '#3B680C', '#529111', '#6ABB15', '#74DD0F', '#7FFF00', '#ADF121', '#D1E131'),
  dark_violet = c('#000000', '#1E0A35', '#31016A', '#4B0181', '#660099', '#7800CA', '#8A00FF', '#C800FF', '#FE00FF'),
  ocean_green = c('#07519B', '#2975B4', '#5097C9', '#93C1DF', '#FCFCFC', '#CAEAC5', '#97D494', '#5BAB5A', '#006400'),
  ocean_earth = c('#0F3341', '#1563AA', '#0B99E6', '#3DCDFD', '#F7F7F7', '#B87350', '#872E1C', '#601622', '#401C2A'),
  ocean_brick = c('#0F3341', '#1563AA', '#0B99E6', '#3DCDFD', '#F7F7F7', '#EB9457', '#D1551F', '#B02F1B', '#8D1616'),
  algae_earth = c('#543005', '#985D12', '#CFA154', '#F0DEB1', '#F5F5F5', '#B5E2DC', '#5AB2A8', '#0E726A', '#003C30'),
  flame_flame = c('#000033', '#0000A5', '#1E00FB', '#6F00FD', '#C628D6', '#FE629D', '#FF9B64', '#FFD52C', '#FFFF5F'),
  flame_light = c('#000033', '#000E92', '#1300FF', '#8E0EEA', '#C628D6', '#E9699F', '#FF9B63', '#FFCE62', '#FFFF5F'),
  flame_polar = c('#C628D6', '#8E0EEA', '#1300FF', '#000E92', '#000033', '#7F494D', '#FF9B63', '#FFCE62', '#FFFF5F'),
  flame_volts = c('#000000', '#371377', '#5F00FF', '#9400FF', '#BE00FF', '#E000EB', '#FF00D8', '#FF0090', '#FF004B'),
  flame_watts = c('#FFFFFF', '#C190FF', '#5F00FF', '#9400FF', '#BE00FF', '#E000EB', '#FF00D8', '#FF0090', '#FF004B'),
  flame_artic = c('#000000', '#371377', '#5F00FF', '#BD00EC', '#FF00D8', '#C7ACEC', '#00FFFF', '#0AD7D3', '#0DB2AA'),
  flame_weird = c('#00FFFF', '#0AD7D3', '#0DB2AA', '#1C5551', '#000000', '#371377', '#5F00FF', '#BD00EC', '#FF00D8'),
  flame_blind = c('#0DB2AA', '#0AD7D3', '#00FFFF', '#B1FFFE', '#FFFFFF', '#FFA3EC', '#FF00D8', '#BD00EC', '#5F00FF'),
  flame_macaw = c('#000000', '#28410F', '#477C0E', '#64B114', '#9FCF23', '#C9E553', '#81F7D0', '#16DCD2', '#1AA58C'),
  flame_wings = c('#D1E131', '#85C51D', '#529111', '#2F4E0F', '#000000', '#0F4338', '#107E6A', '#1BBBA7', '#00FFFF'),

  calma_azules = c('#031C25', '#093B4D', '#1C5F77', '#3685A2', '#56A6C3', '#86C2D8', '#B6DDEB', '#F2FBFE'),
  calma_musgos = c('#212503', '#444D09', '#6B771C', '#93A236', '#B4C356', '#CDD886', '#E4EBB6', '#FCFEF2'),
  calma_bosque = c('#032506', '#094D0E', '#1C7722', '#36A23D', '#56C35D', '#86D88B', '#B6EBBA', '#F2FEF3'),
  calma_marino = c('#032515', '#094D2D', '#1C774D', '#36A26F', '#56C390', '#86D8B2', '#B6EBD2', '#F2FEF8'),
  calma_morado = c('#030925', '#09154D', '#1C2B77', '#3648A2', '#5668C3', '#8694D8', '#B6BFEB', '#F2F4FE'),
  calma_manudo = c('#290303', '#590707', '#8C1616', '#BE2A2A', '#DF4A4A', '#ED8080', '#F7B4B4', '#FFEEEE'),
  china_theory = c('#120324', '#420A4A', '#721D57', '#9B3850', '#BC6B58', '#D3B687', '#E6E8B7', '#F8FDF2'),
  china_ranges = c('#031424', '#1F0A4A', '#721D64', '#9B3838', '#BCAB58', '#A0D387', '#B7E8CF', '#F2F9FD'),
  china_weirdo = c('#04032E', '#2E0267', '#890BA3', '#DE15AF', '#FF347E', '#FF7772', '#FFCFAB', '#FFFBEA'),
  china_basics = c('#25032E', '#670253', '#A30B48', '#DE1515', '#FF8534', '#FFE272', '#EEFFAB', '#F2FFEA'),
  china_sunset = c('#031124', '#0C0A4A', '#451D72', '#91389B', '#BC589B', '#D38799', '#E8C1B7', '#FDF9F2'),
  china_dragon = c('#03032A', '#2B065C', '#801491', '#C52696', '#E74671', '#F2917D', '#FADEB3', '#FEFFED'),
  china_novice = c('#2A0E03', '#5C4406', '#7E9114', '#68C526', '#46E748', '#7DF2B2', '#B3FAF2', '#EDF9FF'),

  brewer_fire = c('#FFFFE5', '#FFF7BC', '#FEE391', '#FEC44F', '#FE9929', '#EC7014', '#CC4C02', '#993404', '#662506'),
  brewer_heat = c('#FFF7EC', '#FEE8C8', '#FDD49E', '#FDBB84', '#FC8D59', '#EF6548', '#D7301F', '#B30000', '#7F0000'),
  brewer_orange = c('#FFF5EB', '#FEE6CE', '#FDD0A2', '#FDAE6B', '#FD8D3C', '#F16913', '#D94801', '#A63603', '#7F2704'),
  brewer_red = c('#FFF5F0', '#FEE0D2', '#FCBBA1', '#FC9272', '#FB6A4A', '#EF3B2C', '#CB181D', '#A50F15', '#67000D'),
  brewer_green = c('#F7FCF5', '#E5F5E0', '#C7E9C0', '#A1D99B', '#74C476', '#41AB5D', '#238B45', '#006D2C', '#00441B'),
  brewer_blue = c('#F7FBFF', '#DEEBF7', '#C6DBEF', '#9ECAE1', '#6BAED6', '#4292C6', '#2171B5', '#08519C', '#08306B'),
  brewer_purple = c('#FCFBFD', '#EFEDF5', '#DADAEB', '#BCBDDC', '#9E9AC8', '#807DBA', '#6A51A3', '#54278F', '#3F007D'),
  brewer_violet = c('#FFF7F3', '#FDE0DD', '#FCC5C0', '#FA9FB5', '#F768A1', '#DD3497', '#AE017E', '#7A0177', '#49006A'),
  brewer_jamaica = c('#006837', '#2DA154', '#86CB66', '#CCE982', '#FFFFBF', '#FDD380', '#F88D51', '#DE3F2E', '#A50026'),
  brewer_marine = c('#F7FCF0', '#E0F3DB', '#CCEBC5', '#A8DDB5', '#7BCCC4', '#4EB3D3', '#2B8CBE', '#0868AC', '#084081'),
  brewer_spectra = c('#5E4FA2', '#3F96B7', '#88CFA4', '#D7EF9B', '#FFFFBF', '#FDD380', '#F88D51', '#DC494C', '#9E0142'),
  brewer_celsius = c('#313695', '#5083BB', '#8FC3DD', '#D2ECF4', '#FFFFBF', '#FDD384', '#F88D51', '#DE3F2E', '#A50026'),
  brewer_yes = c('#053061', '#2971B1', '#6AACD0', '#C1DDEB', '#F7F7F7', '#FACDB5', '#E58267', '#BB2933', '#67001F'),

  forest_yellow = c('#215e33', '#306835', '#3f7136', '#4e7b38', '#5d843a', '#6c8e3b', '#7b983d', '#89a13f', '#98ab41', '#a7b542', '#b6be44', '#c5c846', '#d4d147', '#e3db49'),
  forest_citric = c('#0b3310', '#1b4210', '#2b5111', '#3b6111', '#4c7012', '#5c7f12', '#6c8e12', '#7c9e13', '#8cad13', '#9cbc13', '#adcb14', '#bddb14', '#cdea15', '#ddf915'),
  citric_yellow = c('#21be45', '#30c246', '#40c546', '#4fc947', '#5fcc48', '#6ed048', '#7dd349', '#8dd74a', '#9cda4b', '#abde4b', '#bbe14c', '#cae54d', '#dae84d', '#e9ec4e'),
  ocean_citrus  = c('#3683ba', '#418bb0', '#4c93a7', '#569b9d', '#61a393', '#6cab8a', '#77b380', '#81ba76', '#8cc26c', '#97ca63', '#a2d259', '#acda4f', '#b7e246', '#c2ea3c'),
  ocean_pink = c('#3b5e84', '#4a5e84', '#595e84', '#685e84', '#765e84', '#855e84', '#945e84', '#a35f85', '#b25f85', '#c15f85', '#cf5f85', '#de5f85', '#ed5f85', '#fc5f85'),
  ocean_red = c('#3b82ae', '#487aa1', '#547294', '#616987', '#6d617a', '#7a596d', '#865160', '#934853', '#9f4046', '#ac3839', '#b8302c', '#c5271f', '#d11f12', '#de1705'),
  ocean_aqua = c('#2668aa', '#2d6eaa', '#3574aa', '#3c7aaa', '#4380a9', '#4b86a9', '#528ca9', '#5993a9', '#6099a9', '#689fa9', '#6fa5a8', '#76aba8', '#7eb1a8', '#85b7a8'),
  ocean_teal = c('#0a0a66', '#15176c', '#202573', '#2b3279', '#364080', '#414d86', '#4c5a8d', '#576893', '#62759a', '#6d82a0', '#7890a7', '#839dad', '#8eabb4', '#99b8ba'),
  cyan_brick = c('#6cd0c2', '#70c3b3', '#74b6a5', '#78a996', '#7b9c88', '#7f8f79', '#83826a', '#87755c', '#8b684d', '#8f5b3e', '#924e30', '#964121', '#9a3413', '#9e2704'),
  aqua_brick = c('#019bcf', '#0d94c2', '#1a8cb4', '#2685a7', '#337d99', '#3f768c', '#4c6e7e', '#586771', '#655f63', '#715856', '#7e5048', '#8a493b', '#97412d', '#a33a20'),
  aqua_tan  = c('#62adbb', '#6cb0b5', '#75b2af', '#7fb5a8', '#88b7a2', '#92ba9c', '#9bbd96', '#a5bf8f', '#aec289', '#b8c583', '#c1c77d', '#cbca76', '#d4cc70', '#decf6a'),
  cyan_tan  = c('#4fe8c2', '#5be3bb', '#67deb5', '#73d9ae', '#7fd3a7', '#8bcea1', '#97c99a', '#a4c493', '#b0bf8c', '#bcba86', '#c8b47f', '#d4af78', '#e0aa72', '#eca56b'),
  teal_orange = c('#0cb499', '#1dae92', '#2ea98b', '#3fa384', '#4f9e7d', '#609876', '#71936f', '#828d69', '#938862', '#a4825b', '#b47d54', '#c5774d', '#d67246', '#e76c3f'),
  teal_violet = c('#4b8b84', '#508184', '#567784', '#5b6d84', '#616384', '#665984', '#6b4f84', '#714683', '#763c83', '#7b3283', '#812883', '#861e83', '#8c1483', '#910a83'),
  blue_cyan = c('#4111f2', '#4923f0', '#5135ed', '#5946eb', '#6258e8', '#6a6ae6', '#727ce3', '#7a8de1', '#829fde', '#8ab1dc', '#93c3d9', '#9bd4d7', '#a3e6d4', '#abf8d2'),
  purple_pink = c('#6848d1', '#7345ca', '#7f42c3', '#8a3fbc', '#953db5', '#a13aae', '#ac37a7', '#b734a1', '#c2319a', '#ce2e93', '#d92c8c', '#e42985', '#f0267e', '#fb2377'),
  purple_baby = c('#511293', '#5a239b', '#6234a2', '#6b45aa', '#7356b2', '#7c67b9', '#8478c1', '#8d88c9', '#9599d1', '#9eaad8', '#a6bbe0', '#afcce8', '#b7ddef', '#c0eef7'),
  cyan_green = c('#29ddea', '#31dcd8', '#39dcc7', '#41dbb5', '#4adba3', '#52da92', '#5ad980', '#62d96e', '#6ad85c', '#72d74b', '#7bd739', '#83d627', '#8bd616', '#93d504'),
  cyan_pink = c('#606bef', '#6c6ae6', '#7869dd', '#8468d4', '#9168cb', '#9d67c2', '#a966b9', '#b565b1', '#c164a8', '#cd639f', '#da6396', '#e6628d', '#f26184', '#fe607b'),
  cyan_violet = c('#29e9ae', '#36dbae', '#43cdae', '#50beaf', '#5eb0af', '#6ba2af', '#7894af', '#8585b0', '#9277b0', '#9f69b0', '#ad5bb0', '#ba4cb1', '#c73eb1', '#d430b1'),
  cyan_purple = c( '#4adbf1', '#51cff0', '#59c3ef', '#60b7ee', '#68abed', '#6f9fec', '#7793eb', '#7e88eb', '#867cea', '#8d70e9')
)

#' @export
jg_palettes <- c(
  ArchR_palettes_copy, 
  jdb_palettes_copy[!(names(jdb_palettes_copy) %in% names(ArchR_palettes_copy))]
)


#Helper pal functions from buencolors
#https://github.com/caleblareau/BuenColors

#' A palette generator
#'
#' These are a handful of color palettes for the Buenrostrolab and from ArchR and others!
#'
#' @param n Number of colors desired.
#' @param name Name of desired palette. Choices are: lots.
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#' @return A vector of colours.
#' @importFrom grDevices colorRampPalette rgb
#' @importFrom graphics image par rect text
#' @keywords colors
#' @examples
#' construct_pal("Cavalcanti")
#' construct_pal("Cavalcanti", 3)
#' construct_pal("Cavalcanti", c(1,3))
#'
#' @export
construct_pal <- function(name, n, type = c("discrete", "continuous")) {

  type <- match.arg(type)

  pal <- jg_palettes[[name]]

  if (is.null(pal)) stop("Palette not found.")
  if (missing(n)) n <- length(pal)

  if (type == "discrete" & n > length(pal)) {
    pal <- colorRampPalette(pal)(n)
  }

  out <- switch(type,
                continuous = colorRampPalette(pal)(10),
                discrete = pal[seq_len(n)]
  )

  structure(out, class = "palette", name = name)
  
}

#' @export
print_pal <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}


















































