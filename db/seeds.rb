require 'faker'
require 'colorize'

emoticons = ["\u{1F648}", "\u{1F63B}", "\u{1F48B}", "\u{1F4A4}", "\u{1F476}", "\u{1F412}", "\u{1F984}", "\u{1F42E}", "\u{1F423}", "\u{1F427}", "\u{1F986}", "\u{1F438}", "\u{1F433}", "\u{1F419}", "\u{1F98B}", "\u{1F40C}", "\u{1F41E}", "\u{1F33E}", "\u{1F33E}", "\u{1F34C}", "\u{1F965}", "\u{1F955}", "\u{1F35F}", "\u{1F35F}", "\u{1F32E}"]

puts `clear`
puts "










                                                        ====================================".green
puts "                                                        Remise à zéro de la base de données.".green.blink
puts "                                                        ====================================\n".green
# réinitialisation de la base de données
Course.destroy_all
Lesson.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'courses'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'lessons'")
puts `clear`

puts "
                                        #################################################################################
                                          Ok en voiture Simone, c'est parti pour l'initialisation de la base de données
                                        #################################################################################\n\n"
# remplissage de la table courses
30.times do |i|
  course = Course.create!(title: Faker::WorldOfWarcraft.quote, description: Faker::TheFreshPrinceOfBelAir.quote)
  if i+1 == 30
    puts " #{i + 1} courses created.\n\n"
  elsif i != 0 && i % 3 == 0
    print emoticons.sample
  else
    print '.'
  end
end

# remplissage de la table lessons
120.times do |j|
  lesson = Lesson.create!(title: Faker::SwordArtOnline.item, body: Faker::StarWars.quote, course_id: rand(1..30))
  if j+1 == 120
    puts " #{j + 1} lessons created.\n\n"
  elsif j != 0 && j % 3 == 0
    print emoticons.sample
  else
    print '.'
  end
end

puts "Merci d'avoir patienté\n"
puts ""
puts "                                                                 ./shdmdhhhhdmmdhs/.".green
sleep(0.03)
puts "                                                             `-shhyysssoooooosssyhdmdo.".green
sleep(0.03)
puts "                                                           -shhyssooooooooooooooooosydmo`".green
sleep(0.03)
puts "                                                        `/hdysosooosooooooooooooooosossmh.".green
sleep(0.03)
puts "                                                      `/hhssoosoooooooooooooooooooooooosdd`".green
sleep(0.03)
puts "                                                     :dhsosooooooooooooooooooooooooooooosms".green
sleep(0.03)
puts "                                          `.:++hhyyhdmysoooooooooooooooooooooooooooooooooym:".green
sleep(0.03)
puts "                                      `:+syhNs+mdmmmdsoooooooooooooooooooooooooooooooooosoNo".green
sleep(0.03)
puts "                                   ./ydNdyddy/-+hNNysooooooooooooooosoossyyyyyysossososssohy`".green
sleep(0.03)
puts "                                `:ymms//os+:-+hmMmysooooooooooossssssydddhyyyyhdddhysososoyd.".green
sleep(0.03)
puts "                              `/yhmNdyyho--/ydhmmsoooossssyyyyhhyyyyydh+/:::::/++osydysosohd.".green
sleep(0.03)
puts "                          `..:hhsyNyoosdh+hdysdNyhhhhhdmmdso////::::///:::::::+syhhyydmyoody`".green
sleep(0.03)
puts "                        /ssdmdsssyNyyysoymhsodMdyso+++++sy+:::::::::::::::::::::://+oyhmdymo".green
sleep(0.03)
puts "                      `od+ymyssssyMs::+dhsooyNh+::::::::://::::::::::::::::::::::::::::+ohNs.".green
sleep(0.03)
puts "                      :mydMdooooosmy+hdsososNd/:+oo/::::::::::::::::::::::::::::::::::::::+sh+`".green
sleep(0.03)
puts "                      .mMMMmoooossyNmhsssssmN+oso+/:::::::::::::::::::::::::::::::::::::::::/yy:".green
sleep(0.03)
puts "                      -mdNmmsosoosdmyosossdNoss/:/+ys/::::::::::::::::::::::::::::::::::::::::+h+`".green
sleep(0.03)
puts "                     .hhsdsNhosoommsososshNoys::/ys+shoo::::::::::::::::::::::::::::::::::::::++ho`".green
sleep(0.03)
puts "                     odsohysmssohNyoooosdm+oy:::ho/shhhd+:::::::::::::::::::::::::::::::::::::/+/ho".green
sleep(0.03)
puts "                    `myooyN/myoyNhsoossmd+:s/::yoohy:``:sy/::::::::::::::::::::::hs::::::::::::::om`".green
sleep(0.03)
puts "                    sdososmssmohMsooshmy/::/::oysd/      +h+::::::::::::::::::::/s/:::::::::::::::d+".green
sleep(0.03)
puts "                   `dyossoym+dhdMssymh+::::::/yod:        +m::::::::::::::::::::::::::::::::::::::dh".green
sleep(0.03)
puts "                   .dsososomh+mmMhdho::::::::+hm+ ``      .ds::::::::::::::::::::::::::::::::::::/ms".green
sleep(0.03)
puts "                   -mssososyNsoNNy+::::::::::+mN-/sys/`    yd::::::::::::::::::::::::::::::::::::sN`".green
sleep(0.03)
puts "                   -msosoossyNsyh::::::::::::/dMdddmhhs`   om:::::::::::::::::::::::::::::::::::/dy".green
sleep(0.03)
puts "                   .dyosooossyNNs:::::::::::::sMNmNhMmdo   sd:::::::::::::::::::::::::::::::::::sNm/".green
sleep(0.03)
puts "                   `dhosoooooshN+:::::::::::::/dMMmhMMyy` `dy::::::::::::::::::::::::::::::::::+No+No`".green
sleep(0.03)
puts "                    smosooossodd/::::::::::::::/mMMMMMddo+sdo/::::::::::::::::::::::::::::::::/dy::+N+".green
sleep(0.03)
puts "                    .NyoooooosNo::::::::::::::::/dNhys++/::::::::::::::::::::::::::::::::::::+dh:::/hm".green
sleep(0.03)
puts "                     omsooossmh:::::::::::::::/ss+:::::::::::::::/y:::::::::::::::/+oshddddhhdo:::::yN".green
sleep(0.03)
puts "                     .hdoosohN/:::::::::/::::::::::::::::::::::::od::::::::::/+symNNyo///////:::::::sN".green
sleep(0.03)
puts "                      .ddsssmh:::::::/o+/::::::::::::::::::::::::hNdhsssssyhdNMMMMMs::::::::::::::::ym".green
sleep(0.03)
puts "                       `ymyyN+::::::so::::::::::::::::::::::::::/myMMMMMMMMMMMMMMMM+:::::::::::::::/hs".green
sleep(0.03)
puts "                        `/dNM+::::/o::::::::::::::::::::::::::::oo:sNMmhhhhho//ohNMs:::::::::::::::+d-".green
sleep(0.03)
puts "                          `hM+::::::::::::::::::::::::::::::::::::::+hh+----::---oMm/:::::::::::::/d/".green
sleep(0.03)
puts "                        `/yoddys/:::::::::::::::::::::::::::::::::::::+yhys+/////hMMms:/+::::::::od/".green
sleep(0.03)
puts "                       -yooymmdds::::::::::::::::::::::::::::::::::::::://+syyyyyyo+/::+m/:::::/yh-".green
sleep(0.03)
puts "                     `oy/ss/hmddy:::::::::::::::::::::::::::::::::::::::::::::::::::::/do::::/sd+`".green
sleep(0.03)
puts "                    `ys:yy::yNdd+::::::::::::::::::::::::::::::::::::::::::::::::::::+y+:::/omy-".green
sleep(0.03)
puts "                   `ys:sh:::oNy+:::::::::::::::::::::::::::::::::::::::::::::::::::/oo/:::ohhyh/".green
sleep(0.03)
puts "                  `oy:+m/::::ds:::::::::::::::::::::::::::::::::::::::::::::::::::///:::ohy+::+ho`".green
sleep(0.03)
puts "                  :d//ho:::::/do::::::::::::::::::::::::::::::::::::::::::::::::::::::+hy+::::::yy.".green
sleep(0.03)
puts "                  hs:od/::::::+ds:::::::::::::::::::::::::::::::::::::::::::::::::::+yh/:::::::::yh`".green
sleep(0.03)
puts "                 :d::ds::::::::/yho/::::::::::::::::::::::::::::::::::::::::::::::/yho:::::::::::/dy.".green
sleep(0.03)
puts "                 yy::m/::::::::::+yhys+//:::::::::::::::::::::::::::::::::::::::/ydy:::::::::::/sysoho`".green
sleep(0.03)
puts "                `d+:sh:::::::::::::/oshhhhhysoo++///:::::::::::::::::::::::::::+dNmhyo/:::::/oys+:::/ys.".green
sleep(0.03)
puts "                :m::ds:::::::::::::::::://mNNNNNmmmdhhyyyyyso++/::::::::::::::shNdyyhddo::+sso/:::::::sy.".green
sleep(0.03)
puts "                od::d/:::::::::::::::::::/NmmmmmmmmmmmmmNNNNmddddds+/::::::::+d/sNmhsyymhhs/:::::::::::sy`".green
sleep(0.03)
puts "              `oNy::d::::::::::::::::::::yNmmmmmmmmmmmmmmNmhyyyydMsyhs+::::::ss::hMhyysymms:::::::::::::ys`".green
sleep(0.03)
puts "             :hhms:/y///:::::::::::::::::dNmmmmmmmmmmmmmNNysydmdmm:::+so/:::://:/ddyssyyyydy//:::::::::::ho`".green
sleep(0.03)
puts "           `+hysdNssy++++oosso++//:::::::mNmmmmmmmmmmmmmNNysyydNNs///:::/:::/ohhmNdyyyhhsshNyyyyyo+/:::::/d+".green
sleep(0.03)
puts "          `shsssdh::h/:::::///ooshyso++//mNmmmmmmmmmmmNNdyyyssyyhdddhyyssoosdhyyyyhdmmdyyyNy::://+oyyo/:::om.".green
sleep(0.03)
puts "         .ydssssdm::os:::::::::::::/+ossyNmmmmmmmmmmNNdysssssssssssyyyhhhhdNhsssyssshmyydms:::::::::/shy+::hh`".green
sleep(0.03)
puts "        `yNmssshmMo::h:::::::::::::::::::yNmmmmmmmmNmyyysssssssyyyyyyyyyhdmNyssssssyhMmds/:::::::::::::+yho+N+".green
sleep(0.03)
puts "        sdhNyhdysmd::y+:::::::::::::::::::NmmmmmmmmNdddhyyyssssyyyhhhhhhhhhNdyyyyyyhmmdhs+/::::::::::::::+ydNy`".green
sleep(0.03)
puts "       :mssmNdsssmm+:oy::::::::::::::::::-NNmmmmmmmyo//ohddhyyyyyyyyyyyhddddNmdddmmNdyyyyhhy+::::::::::::::/yds.".green
sleep(0.03)
puts "      `sdsssyssyddMy:+h/::::::::::::::::::hNmmmmms/::::::/osddmdddddddNNhyddyyydMyyyhddysyyydy+:::::+o::::::::ohy+.`".green
sleep(0.03)
puts "     `smNsssssymhsmd/:y+::::::::::::::::::oNmmNd/:::::::::::://++++/+mdyydhsysyhMdyssyydhyssshdy/::::+y/:d+:::::/oyyo-`".green
sleep(0.03)
puts "    .hysdNyssdmysshN+:oy::::::::::::::::::/mNNy/:::::::::::::::::::+mdsshhssssydNymdyyssyysyssshds/:::/hoNo:::::::::+yhy/.".green
sleep(0.03)
puts "   .hhsssdNhdmyssshMo:/m:::::::::::::::::::yNo::::::::::::::::::::/hmsyyysssssymy:/ohddyyyyysssyyhds/::/dNo::::::::::::/syho-`".green
sleep(0.03)
puts "   hNhsssshNmysssymNy::ds:::::::::::::::::yd+:::::::::::::::::::::+Nyysyyssssydh/::::/+syhmmmmmmmmmmo://sNs+/:::::::::::::/+yho.".green
sleep(0.03)
puts "  omsmdssshNsssshdsdN::+d:::::::::::::::/ds:::::::::::::::/:::::::hmyyyssyyyhms:::::::::::::::::+oyhhhhysoooydo:::::::::::::::ohh:".green
sleep(0.03)
puts " :mshmssshNyssshdsshN/::d/:::::::::::::yh+::::::::::::::::s/:+o:::mdyssssyymh+:::::::::::::/+yhhso/:---------/ms::::::::::::::::/yy-".green
sleep(0.03)
puts "`hhyNysssNhsssymsssyNo::hs:::::::::::+ds:::::::::::::::::/h/+y/:::NdysysydNyssssssssooo++shyo/:---------------+N+:::::::::::::::::/y+".green
sleep(0.03)
puts "+msNdsssmdsssymyssssmh::sh::::::::::yh/::::::::::::::::::ymys/:::/Ndsyyhdyso++/////++ooss+---------------------hy:::::::::::::::::::ys`".green
sleep(0.03)
puts "ddhNysshmssssmhsssssdd::om/:::::::odo:::::::::::::::::::oms//+shhyhmhhmy-------------------:-------------------/N+::::::::::::::::::/hs".green
sleep(0.03)
puts "NhmmssyNhsssddssssssym::+m+:::::/hh+:::::::::::::::::::sm+ohhy+/---odh+--------------------/o------------------/mo::+oyhhyyyo+/::::::/do".green
sleep(0.03)
puts "NyNyssdmssssmysssssssm+:/d+::::odo::::::::::::::::::::sNmhs/--------------------------------++-----------------:ds:os+///////:::::::::om:".green
sleep(0.03)
puts "NdmsssNysssmhssssssssNs::hs::/hh+::::::::::::::::::::oNy:------------------------------------y:----------------:hs:::::::::::::::::::::Ns".green
sleep(0.03)
puts "Nmhssdmsssymsssssssssmy::yh:+ds:::::::::::::::::::::/my--------------------------------------/o----------------:ms:::::::::::::::::::::yh`".green
sleep(0.03)
puts "NMyssmmsssdhsssssssssdh/:ymsd+::::::::::::::::::::::sN/--------------------------------------:o----------------/m+:::::::::::::::::::::sy`".green
sleep(0.03)
puts "yMysyNhssymyssssssssshm/:yNy/:::::::::::::::::::::::sN:--------------------------------------/o----------------sh::::::::::::::::::::::ho".green
sleep(0.03)
puts ":mhsyNhsshdsssssssssshN++ds:::::::::::::::::::::::::sN---------------------------------------:+---------:://---Ns:::::::::::::::::::::/d-".green
sleep(0.03)
puts " +mydMhssddsssssssssshMymo::::::::::::::::::::::::::yM----------------------------------------:---::/+++/:-----yy::::::::::::::::::::/d+".green
sleep(0.03)
puts " `ddhNdssymyssssssssshMm+::::::::::::::::::::::::::/dN:------------------------::/::---------------------------oh:::::::::::::::::::/hs".green
sleep(0.03)
puts " `dhsmmssshdssssssssshNo::::::::::::::::::::::::::/hdyhs:----------:/++++oooo+///:------------:----------------oh::::::::::::::::::+ds`".green
sleep(0.03)
puts " `dhsyNysssdhssssssssmy::::::::::::::::::::::::/+oys/:+hm/-----------------------------------:+----------------sy:::::::::::::::::sd+`".green
sleep(0.03)
puts "  hdssddssssdhssssssom+::::::::::::::::::/osssoso+/:::::odo----------------------------------:+----------------ms:::::::::::::::/hh:".green
sleep(0.03)
puts "  smssymhssssdhsssssom+:::::::::::::::::::://::::::::::::+hy---------------------------------:+---------------:N+::::::::::::::od+`".green
sleep(0.03)
puts "  -Nsssymysssshdyssssms:::::::::::::::::::::::::::::::::::/hy:-------------------------------:+---------------sh:::::::::::::+yo-".green
sleep(0.03)
puts "   yhssshmyssssydhsssdd/::::::::::::::::::::::::::::::::::::dh:------------------------------/o--------------+d:::::::::::/+ys-".green
sleep(0.03)
puts "   :myssshmhssssshdysym+::::::::::::::::::::::::::::::::::::/dy------------------------------+o-------------/ho:::::::://syo-".green
sleep(0.03)
puts "   `sdssssymdsssssyddyhd:::::::::::::::::::::::::::::::::::::+N+-----------------------------+:--------:/:--dy::::::/+sds/.".green
sleep(0.03)
puts "    `ydssssymmysssssydhNs:::::::::::::::::::::::::::::::::::::sd--------------------------------////++o+:---ms:::::::/yN".green
sleep(0.03)
puts "     `ydssssshmdysssssydNs:::::::::::::::::::::::::::::::::::::m/---:/+oo++++++++oo+/:----------///:--------Ns::::::::sN".green
sleep(0.03)
puts "      `sdsssssshmdysssssmNy/:::::::::::::::::::::::::::::::::::N+--------::::/:::--------------------------+m/:::::::/ho".green
sleep(0.03)
puts "        /dhssssssdNdyssshNsho/:::::::::::::::::::::::::::::::::Ny------------------------------------------ds::::::::ss`".green
sleep(0.03)
puts "         .sdysssyNyyddhyyN+:shs/:::::::::::::::::::::::::::::::hd:--------------------------/-------------sd:::::::/y+`".green
sleep(0.03)
puts "           .sdhyhhssssydmNs:::Ndho/::::::::::::::::::::::::::::sm:-------------------------/o------------/d+:::::/omds+-".green
sleep(0.03)
puts "             `:smysssdhyydy::-d/+ydhs+/::::::::::::::/syso/::::sh:-------------------------oo-----------:mo::::::/+o//+dy`".green
sleep(0.03)
puts "                /dssmhyhhmd-:-do:::/oyddhysoooooosydmms+:::::::hs--------------------------s/----------/my:::::::::::::yd`".green
sleep(0.03)
puts "                 /mdNsssshN::-dy:::ohdhyhmdsosssssoNy/::::::::/m+-------------------------:o----------omhmy/:::::::/+yyo`".green
sleep(0.03)
puts "                  -hmyssshN:::yh:+dy/::::/sd+:/ossdm/::::::::/dhyhs/----------------------s/--------/hd+:/hNmdhhhhyymo".green
sleep(0.03)
puts "                    :ydhsyN/::+d/my:::sysssyhddsooooso::::::/hy:::+yhy/-------------------/-------:ydo:::::+dm+::::/hs".green
sleep(0.03)
puts "                      ./hdNh//sm+my:/yh/::::dh::::::::::::/sh+::::::/+yhs/----------------------/yho/:::::::/smhsyhy/".green
sleep(0.03)
puts "                         .-ymo++hyyshN+:::::shoo+///::///yds/::::::::::/oyho/----------------/sys+::::::::::::/hNs.".green
sleep(0.03)
puts "                           -d/:::yy//ds:::::+dMmhhhhdmdhys/:::::::::::::::/ymhyo/:------/+yyhs+:::::::::::::::::+dy.".green
sleep(0.03)
puts "                            /d+:::oh+/shhyhhhs//:::+hy/:::::::::::::::::::+do:/+ssyyyyyss+sms::::::::::::::::::::/ymo`".green
sleep(0.03)
puts "                             :hs:::/yy+////:::::::sh+::::::::::::::::::::om+:::::::::::::::oms/::::::::::::::::::::+hh-".green
sleep(0.03)
puts "                              .sh+:::+yy+:::::::+hs:::::::::::::::::::::/do:::::::::::::::ohyyh/:::::::::::::::::::::yd+".green
sleep(0.03)
puts "                                -yy+:::+syo/:::sh+::::::::::::::::::::::dy:::::::::::::/shs:``+h/:::::::::::::::::::::+ds.".green
sleep(0.03)
puts "                                 `:sy+:::/syyshs:::::::::::::::::::::::sd/::::::::::/ohho-     /h/:::::::::::::::::::::/yh-".green
sleep(0.03)
puts "                                    -oys+:::ydo:::::::::::::::::::::::+m/:::::::/oydhs:`        sy:::::::::::::::::::::::sd:".green
sleep(0.03)
puts "                                      `:oyydy/:::::::::::::::::::::::/hd/++ooydddy+-`           .ho:::::::::::::::::::::::+d/".green
sleep(0.03)
puts "                                         :ms:::::::::::::::::::::::::+Nhhhhyys/-.                od::::::::::::::::::::::::+h+".green
sleep(0.03)
puts "                                        /h+::::::::::::::::::::::::::dh/:-.`                     -m:::::::::::::::::::::::::/h/".green
sleep(0.03)
puts "                                       +y/::::::::::::::::::::::::::/m/                          `d/:::::::::::::::::::::::::/h/".green
sleep(0.03)
puts "                                     `oy/:::::::::::::::::::::::::::od`                          -m:::::::::::::::::::::::::::/h:".green
sleep(0.03)
puts "                                    .sy:::::::::::::::::::::::::::::hs                           +d::::::::::::::::::::::::::::+d.".green
sleep(0.03)
puts "                                   `ys::::::::::::::::::::::::::::::d/                          `yo:::::::::::::::::::::::::::::yh`".green
sleep(0.03)
puts "                                  .ys::::::::::::::::::::::::::::::/m-                          /h/:::::::::::::::::::::::::::::/m+".green
sleep(0.03)
puts "                                 .yo:::::::::::::::::::::::::::::::/m-                         `mo:::::::::::::::::::::::::::::::od.".green
sleep(0.03)
puts "                                `ys::::::::::::::::::::::::::::::::/m/                         sh::::::::::::::::::::::::::::::::/ds".green
sleep(0.03)
puts "                               `ys::::::::::::::::::::::::::::::::::ds                        :m::::::::::::::::::::::::::::::::::+m-".green
sleep(0.03)
puts "                              `oy:::::::::::::::::::::::::::::::::::sh                       `hs:::::::::::::::::::::::::::::::::::yh`".green
sleep(0.03)
puts "                              /d/:::::::::::::::::::::::::::::::::::/m-                      +h/::::::::::::::::::::::::::::::::::::d+".green
sleep(0.03)
puts "                             `mo:::::::::::::::::::::::::::::::::::::m+                     .No:::::::::::::::::::::::::::::::::::::od.".green
sleep(0.03)
puts "                            `hy::::::::::::::::::::::::::::::::::::::sy`                    yh::::::::::::::::::::::::::::::::::::::/d+".green
sleep(0.03)
puts "                            /m/::::::::::::::::::::::::::::::::::::::/d-                   +m/:::::::::::::::::::::::::::::::::::::::om".green
sleep(0.03)
puts "                           .hs::::::::::::::::::::::::::::::::::::::::yy                  .ds:::::::::::::::::::::::::::::::::::::::::d/".green
sleep(0.03)
puts "                           /m+::::::::::::::::::::::::::::::::::::::::+m`                 od/:::::::::::::::::::::::::::::::::::::::::hh".green
sleep(0.03)
puts "                           yh/:::::::::::::::::::::::::::::::::::::::::hs                .No::::::::::::::::::::::::::::::::::::::::::od`".green
sleep(0.03)
puts "                           ms::::::::::::::::::::::::::::::::::::::::::/m-               yd:::::::::::::::::::::::::::::::::::::::::::/m.".green
sleep(0.03)
puts "                           m/:::::::::::::::::::::::::::::::::::::::::::ys              :m/:::::::::::::::::::::::::::::::::::::::::::/m-".green
sleep(0.03)
puts "                          -d::::::::::::::::::::::::::::::::::::::::::::/d-            `yd::::::::::::::::::::::::::::::::::::::::::::+d.".green
sleep(0.03)
puts "                          oh:::::::::::::::::::::::::::::::::::::::::::::ys            -m+::::::::::::::::::::::::::::::::::::::::::::sd".green
sleep(0.03)
puts "                          yh:::::::::::::::::::::::::::::::::::::::::::::+m`           yh:::::::::::::::::::::::::::::::::::::::::::::yh".green
sleep(0.03)
puts "                          hh::::::::::::::::::::::::::::::::::::::::::::::d+          `Ns:::::::::::::::::::::::::::::::::::::::::::::ho".green
sleep(0.03)
puts "                          hh::::::::::::::::::::::::::::::::::::::::::::::sd`         /m/::::::::::::::::::::::::::::::::::::::::::::/m.".green
sleep(0.03)
puts "                          hh::::::::::::::::::::::::::::::::::::::::::::::/N/         yy:::::::::::::::::::::::::::::::::::::::::::::sh".green
sleep(0.03)
puts "                          sd:::::::::::::::::::::::::::::::::::::::::::::::mo        .d/::::::::::::::::::::::::::::::::::::::::::::+h:".green
sleep(0.03)
puts "                          .m/::::::::::::::::::::::::::::::::::::::::::::::yh`       /m:::::::::::::::::::::::::::::::::::::::////::yh.".green
sleep(0.03)
puts "                           ds::::::::::::::::::::::::::::::::::::::::::::::+N-       +d:::::::::::::::::::::::::::+oooooooooss+/::::/sd-".green
sleep(0.03)
puts "                         `-hy:::/::::::::::::::::::::::::::::::::::::::::::/m/       oy:::::::::::::::::::::::::::/+ossyyssssooo++::::yh`".green
sleep(0.03)
puts "                        -yy+/:::+osso++///:::::::::::::::::::::::::::::::::/ds      `ys::::::::::::::::::::::::::/osysossooo++++++:::/sm:`".green
sleep(0.03)
puts "                       :do/:::::::/++osyysssssssooo+//:::::::::::::::::::::/hh      .ho:::::::::::::::::::::::::::///:::::::::::::::::/+yys/-".green
sleep(0.03)
puts "                      .ddo/::::/oossysssooooo+/::::::::::::::::::::::::::::/hy      .do::::::::::::::::::::::::::::::::::::::::::::::::::/+sys/.".green
sleep(0.03)
puts "                   `-oys/:::::://:::::::::://++/++/::::::::::::::::::::::::/d/      .ho::::::::::::::::::::::::::::::::::::::::::::::::::::::+syo.".green
sleep(0.03)
puts "                 `/so/:::::::::::::::::::::::::::/:::::::::::::::::::::::::sh.       oh::::::::::::::::::::::::::::::::::::::::::::::::::::::::/oh+`".green
sleep(0.03)
puts "               `/yo/:::::::::::::::::::::::::::::::::::::::::::::::::::::/yd-        .yo/::::::::::::::::::::::::::::::::::::::::::::::::::::::::/ds`".green
sleep(0.03)
puts "              -ys/::::::::::::::::::::::::::::::::::::::::::::::::::::::+dh.          `ohs/::::::::::::::::::::::::::::::::::::::::::::::::::::/osyN+".green
sleep(0.03)
puts "             :h+:::::::::::::::::::::::::::::::::::::::::::::::::::::::odo`             ./yyo/::::::::::::::::::::::::::::::::::::::/+++/:::::+hhyhNy`".green
sleep(0.03)
puts "            .h+::::::::::::::::::::::::::::::::::::::::::::::::::::::/yh-                  -+sso/::::::::::::::::::+osys/:::::::::/shyyhhs:::+myooosd+".green
sleep(0.03)
puts "            /h////:::::::::::::::::::::::::::::::::::::::::::::::::+sh/`                      .:oss+//:::::::::::/hhyssydy/::::::/dhooooohh+/oNyssosyN".green
sleep(0.03)
puts "            :hshhdh/::::::::::::::::::::::::::::::::::::::::::::/+hh+`                           `./osso++//:::::dyoooooohd/:::::sdoooooooymysoosyyhy/".green
sleep(0.03)
puts "            omyooohm/::::/oyyys+::::::::::://:::::::::::::::::/ydy:`                                  .-+osyyssshNooooooooddssssshdhyssooosm:".green
sleep(0.03)
puts "           :moooooods:::odyoooyds:::::::/yyhhhys/::::::::::/sdh+.                                            .-:/shysooooodd..---``-/+syyyo/`".green
sleep(0.03)
puts "           +mssssyhmy++ydoooooosmo:::::odyoooooshs::::::/shh+-`                                                   .:shyyyymo".green
sleep(0.03)
puts "            osss+:`.-ohNsoooooosms:::::myooooooood+::+shy+.                                                           `---.".green
sleep(0.03)
puts "                      :mooosyhyshhddddmmoooooooohmhss+:`".green
sleep(0.03)
puts "                      `ohhds/.    ``..:mooosshdh/.`".green
sleep(0.03)
puts "                                       ydhmhy/.".green
