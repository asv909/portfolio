<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
    <xsl:variable name="sel">selected</xsl:variable>
    <xsl:variable name="item_1">ОБЗОР ПРОДУКЦИИ</xsl:variable>
    <xsl:variable name="href_1">products</xsl:variable>
    <xsl:variable name="title_1">Краткий обзор типов и видов продукции предлагаемой к поставке</xsl:variable>
    <xsl:variable name="item_2">ТРУБЫ И АРМАТУРА</xsl:variable>
    <xsl:variable name="href_2">#</xsl:variable>
    <xsl:variable name="title_2"></xsl:variable>
    <xsl:variable name="item_21">Трубы для прокладки ТП (трубопроводов)</xsl:variable>
    <xsl:variable name="href_21">pipes</xsl:variable>
    <xsl:variable name="title_21">Трубы стандартных диаметров из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для прокладки трубопроводов, предназначенных для транспортировки жидкостей и газов</xsl:variable>
    <xsl:variable name="item_22">Отводы на 45&#176;, 90&#176;, 180&#176; для ТП</xsl:variable>
    <xsl:variable name="href_22">elbows</xsl:variable>
    <xsl:variable name="title_22">Отводы из углеродистой и нержавеющей стали на 45?, 90?, 180? LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для плавного изменения направления трубопровода при монтаже</xsl:variable>
    <xsl:variable name="item_23">Переходы для ТП разных диаметров:</xsl:variable>
    <xsl:variable name="href_23">#</xsl:variable>
    <xsl:variable name="title_23"></xsl:variable>
    <xsl:variable name="item_231">- переходы концентрические</xsl:variable>
    <xsl:variable name="href_231">concentric_reducers</xsl:variable>
    <xsl:variable name="title_231">Переходы концентрические из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для соединения труб разных диаметров</xsl:variable>
    <xsl:variable name="item_232">- переходы эксцентрические</xsl:variable>
    <xsl:variable name="href_232">eccentric_reducers</xsl:variable>
    <xsl:variable name="title_232">Переходы эксцентрические из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для соединения труб разных диаметров</xsl:variable>
    <xsl:variable name="item_24">Тройники для бокового ответвления ТП</xsl:variable>
    <xsl:variable name="href_24">tees</xsl:variable>
    <xsl:variable name="title_24">Тройники из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для бокового ответвления от основного трубопровода</xsl:variable>
    <xsl:variable name="item_25">Фланцы для монтажа оборудования ТП:</xsl:variable>
    <xsl:variable name="href_25">#</xsl:variable>
    <xsl:variable name="title_25"></xsl:variable>
    <xsl:variable name="item_251">- фланцы свободные</xsl:variable>
    <xsl:variable name="href_251">loose_flanges</xsl:variable>
    <xsl:variable name="title_251">Фланцы свободные из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для соединения труб и присоединения оборудования</xsl:variable>
    <xsl:variable name="item_252">- фланцы cварные</xsl:variable>
    <xsl:variable name="href_252">welded_flanges</xsl:variable>
    <xsl:variable name="title_252">Фланцы cварные из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для соединения труб и присоединения оборудования</xsl:variable>
    <xsl:variable name="item_26">Заглушки для перекрытия ТП</xsl:variable>
    <xsl:variable name="href_26">pipe_plugs</xsl:variable>
    <xsl:variable name="title_26">Заглушки из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для перекрытия неиспользуемых участков трубопровода</xsl:variable>
    <xsl:variable name="item_27">Опоры для прокладки и монтажа ТП</xsl:variable>
    <xsl:variable name="href_27">pipe_supports</xsl:variable>
    <xsl:variable name="title_27">Опоры и кронштейны для труб из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для прокладки трубопроводов</xsl:variable>
    <xsl:variable name="item_28">Подвески для прокладки и монтажа ТП</xsl:variable>
    <xsl:variable name="href_28">piping_hangers</xsl:variable>
    <xsl:variable name="title_28">Подвески для труб из углеродистой и нержавеющей стали LVI-DAHL, BUHLMANN, SUOMEN STAHL, FLABOFORM, для прокладки трубопроводов</xsl:variable>
    <xsl:variable name="item_3">ГИДРАВЛИКА</xsl:variable>
    <xsl:variable name="href_3">#</xsl:variable>
    <xsl:variable name="title_3"></xsl:variable>
    <xsl:variable name="item_31">РВД / Шланги с оплеткой стальной:</xsl:variable>
    <xsl:variable name="href_31">#</xsl:variable>
    <xsl:variable name="title_31"></xsl:variable>
    <xsl:variable name="item_311">- одинарной перекрестной</xsl:variable>
    <xsl:variable name="href_311">single-braided_hoses</xsl:variable>
    <xsl:variable name="title_311">Рукава высокого давления РВД c одинарной стальной перекрестной оплеткой для гидравлических систем</xsl:variable>
    <xsl:variable name="item_312">- двойной перекрестной</xsl:variable>
    <xsl:variable name="href_312">double-braided_hoses</xsl:variable>
    <xsl:variable name="title_312">Рукава высокого давления РВД c двойной стальной перекрестной оплеткой для гидравлических систем</xsl:variable>
    <xsl:variable name="item_313">- тройной перекрестной</xsl:variable>
    <xsl:variable name="href_313">triple-braided_hoses</xsl:variable>
    <xsl:variable name="title_313">Рукава высокого давления РВД c тройной стальной перекрестной оплеткой для гидравлических систем</xsl:variable>
    <xsl:variable name="item_314">- спиральной</xsl:variable>
    <xsl:variable name="href_314">spiral-braided_hoses</xsl:variable>
    <xsl:variable name="title_314">Рукава высокого давления РВД cо спиральной стальной оплеткой для гидравлических систем</xsl:variable>
    <xsl:variable name="item_32">Фитинги для РВД / шлангов:</xsl:variable>
    <xsl:variable name="href_32">#</xsl:variable>
    <xsl:variable name="title_32"></xsl:variable>
    <xsl:variable name="item_321">- с перекрёстной оплеткой</xsl:variable>
    <xsl:variable name="href_321">cross-braided_fittings</xsl:variable>
    <xsl:variable name="title_321">Фитинги для гидравлических шлангов со стальной перекрестной оплеткой</xsl:variable>
    <xsl:variable name="item_322">- со спиральной оплеткой</xsl:variable>
    <xsl:variable name="href_322">spiral-braided_fittings</xsl:variable>
    <xsl:variable name="title_322">Фитинги для гидравлических шлангов со стальной спиральной оплеткой</xsl:variable>
    <xsl:variable name="item_323">- с особо высоким давлением</xsl:variable>
    <xsl:variable name="href_323">super-hp_fittings</xsl:variable>
    <xsl:variable name="title_323">Фитинги гидравлические для особо высоких давлений</xsl:variable>
    <xsl:variable name="item_324">- монтируемые фитинги</xsl:variable>
    <xsl:variable name="href_324">assembled_fittings</xsl:variable>
    <xsl:variable name="title_324">Монтируемые фитинги для гидравлических шлангов со стальной перекрестной оплеткой</xsl:variable>
    <xsl:variable name="item_325">- пресс-втулки</xsl:variable>
    <xsl:variable name="href_325">press-plugs</xsl:variable>
    <xsl:variable name="title_325">Пресс-втулки для гидравлических шлангов со стальной перекрестной оплеткой</xsl:variable>
    <xsl:variable name="item_33">Трубы гидравлические DIN 2391</xsl:variable>
    <xsl:variable name="href_33">din2391</xsl:variable>
    <xsl:variable name="title_33">Трубы гидравлические по стандарту DIN 2391 черные фосфатированные, оцинкованные, нержавеющие. Размеры и цены. Сроки поставки.</xsl:variable>
    <xsl:variable name="item_34">Соединения с врезным кольцом DIN 2353</xsl:variable>
    <xsl:variable name="href_34">din2353</xsl:variable>
    <xsl:variable name="title_34">Соединения резьбовые гидравлические с врезным кольцом по стандарту DIN 2353</xsl:variable>
    <xsl:variable name="item_35">Быстроразъемные соединения БРС</xsl:variable>
    <xsl:variable name="href_35">h_quick-joints</xsl:variable>
    <xsl:variable name="title_35">Быстроразъемные соединения для высокого давления</xsl:variable>
    <xsl:variable name="item_36">Краны / вентили шаровые</xsl:variable>
    <xsl:variable name="href_36">ball_valves</xsl:variable>
    <xsl:variable name="title_36">Краны / вентили шаровые для высокого давления</xsl:variable>
    <xsl:variable name="item_37">Гидрораспределители</xsl:variable>
    <xsl:variable name="href_37">control_valves</xsl:variable>
    <xsl:variable name="title_37">Гидрораспределители - устройства управления распределением давления в сложных гидравлических системах</xsl:variable>
    <xsl:variable name="item_38">Гидронасосы</xsl:variable>
    <xsl:variable name="href_38">pumps</xsl:variable>
    <xsl:variable name="title_38">Гидронасосы предназначены для создания рабочего давления в гидравлических системах</xsl:variable>
    <xsl:variable name="item_39">Гидроцилиндры</xsl:variable>
    <xsl:variable name="href_39">h_cylinders</xsl:variable>
    <xsl:variable name="title_39">Гидроцилиндры - устройства преобразования давления жидкости в механическую энергию и наоборот</xsl:variable>
    <xsl:variable name="item_4">ПНЕВМАТИКА</xsl:variable>
    <xsl:variable name="href_4">#</xsl:variable>
    <xsl:variable name="title_4"></xsl:variable>
    <xsl:variable name="item_41">Трубки пневматические</xsl:variable>
    <xsl:variable name="href_41">p_pipes</xsl:variable>
    <xsl:variable name="title_41">Трубки пневматические для монтажа пневматических систем</xsl:variable>
    <xsl:variable name="item_42">Фитинги пневматические</xsl:variable>
    <xsl:variable name="href_42">p_fittings</xsl:variable>
    <xsl:variable name="title_42">Фитинги пневматические для монтажа соединений пневматических систем и устройств</xsl:variable>
    <xsl:variable name="item_43">Пневмоцилиндры</xsl:variable>
    <xsl:variable name="href_43">p_cylinders</xsl:variable>
    <xsl:variable name="title_43">Пневмоцилиндры применяются в пневматических системах и устройствах для преобразования давления газа или воздуха в механическую энергию</xsl:variable>
    <xsl:variable name="item_44">Клапаны пневматические</xsl:variable>
    <xsl:variable name="href_44">p_valves</xsl:variable>
    <xsl:variable name="title_44">Клапаны электромагнитные пневматические предназначены для управления процессами подачи, расхода, выпуска рабочего газа или воздуха в пневматических устройствах и системах</xsl:variable>
    <xsl:variable name="item_45">Пневмораспределители</xsl:variable>
    <xsl:variable name="href_45">p_control-valves</xsl:variable>
    <xsl:variable name="title_45">Пневмораспределители предназначены для управления процессами изменения направления, пуска, остановки потока сжатого газа или воздуха в пневматическом устройстве или пневматической системе</xsl:variable>
    <xsl:variable name="item_46">Пневмодроссели</xsl:variable>
    <xsl:variable name="href_46">p_governors</xsl:variable>
    <xsl:variable name="title_46">Пневмодроссели предназначены для управления расходом сжатого газа или воздуха в пневматических устройствах и системах</xsl:variable>
    <xsl:variable name="item_8">РЕЗИНОТЕХИЗДЕЛИЯ</xsl:variable>
    <xsl:variable name="href_8">#</xsl:variable>
    <xsl:variable name="title_8"></xsl:variable>
    <xsl:variable name="item_81">Ремни приводные</xsl:variable>
    <xsl:variable name="href_81">drive-belts</xsl:variable>
    <xsl:variable name="title_81">Ремни приводные являются неотъемлемой частью ремённых передач, осуществляющих передачу вращательного движения с помощью ремня, охватывающего закрепленные на валах шкивы. Приводной ремень передаёт крутящий момент с ведущего шкива на ведомый шкив за счёт сил трения, возникающих между натянутым ремнём и шкивами. Приводные ремни по типу поперечного профиля могут быть плоскими, круглыми и клиновыми или поликлиновыми</xsl:variable>
    <xsl:variable name="item_82">Ленты конвейерные</xsl:variable>
    <xsl:variable name="href_82">conveyor-belts</xsl:variable>
    <xsl:variable name="title_82">Ленты конвейерные являются составной частью ленточных конвейеров и выполняют функции грузонесущей поверхности, транспортирующей груз к месту назначения. Ленты конвейерные представляют собой прорезиненное полотно с тканевой основой. Для значительных тяговых усилий прорезиненое полотно конвейерной ленты изготавливается с применеием тросовой основы</xsl:variable>
    <xsl:variable name="item_83">Уплотнения:</xsl:variable>
    <xsl:variable name="href_83">#</xsl:variable>
    <xsl:variable name="title_83"></xsl:variable>
    <xsl:variable name="item_831">- для неподвижных соединений</xsl:variable>
    <xsl:variable name="href_831">for_fixed-joint</xsl:variable>
    <xsl:variable name="title_831">Прокладки из эластичных материалов предназначены для герметичного соединения неподвижных соединений фланцевого типа</xsl:variable>
    <xsl:variable name="item_832">- для подвижных соединений</xsl:variable>
    <xsl:variable name="href_832">for_movable-joint</xsl:variable>
    <xsl:variable name="title_832">Сальники уплотнительные предназначены для уплотнения вращающихся валов агрегатов и механизмов. Манжеты уплотнительные предназначены для уплотнения зазора между цилиндром и поршнем в гидравлических устройствах, для уплотнения между цилиндром и штоком в пневматических устройствах. Кольца уплотнительные круглого сечения используются в качестве динамических и статических уплотнений в гидравлических и пневматических агрегатах</xsl:variable>
    <xsl:variable name="item_833">- сальниковые набивки</xsl:variable>
    <xsl:variable name="href_833">seal-packings</xsl:variable>
    <xsl:variable name="title_833">Набивки сальниковые применяются для заполнения сальниковых камер с целью герметизации зазоров подвижных и неподвижных соединений гидравлических устройств и агрегатов</xsl:variable>
	<xsl:variable name="item_5"></xsl:variable>
    <xsl:variable name="href_5">#</xsl:variable>
    <xsl:variable name="title_5"></xsl:variable>
    <xsl:variable name="item_6"></xsl:variable>
    <xsl:variable name="href_6">#</xsl:variable>
    <xsl:variable name="title_6"></xsl:variable>
    <xsl:template name="leftmenu">
        <ul id="l-nav">
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_1"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_1"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '1'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_1"/>
                    </xsl:with-param>
                </xsl:call-template>
            </li>
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_2"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_2"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '2'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_2"/>
                    </xsl:with-param>
                </xsl:call-template>
                <ul>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_21"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_21"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '21'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_21"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_22"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_22"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '22'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_22"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_23"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_23"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '23'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_23"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <ul>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_231"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_231"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '231'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_231"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_232"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_232"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '232'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_232"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_24"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_24"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '24'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_24"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_25"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_25"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '25'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_25"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <ul>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_251"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_251"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '251'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_251"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_252"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_252"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '252'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_252"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_26"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_26"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '26'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_26"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_27"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_27"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '27'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_27"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_28"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_28"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '28'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_28"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                </ul>
            </li>
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_3"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_3"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '3'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_3"/>
                    </xsl:with-param>
                </xsl:call-template>
                <ul>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_31"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_31"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '31'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_31"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <ul>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_311"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_311"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '311'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_311"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_312"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_312"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '312'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_312"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_313"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_313"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '313'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_313"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_314"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_314"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '314'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_314"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_32"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_32"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '32'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_32"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <ul>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_321"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_321"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '321'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_321"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_322"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_322"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '322'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_322"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_323"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_323"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '323'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_323"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_324"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_324"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '324'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_324"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_325"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_325"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '325'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_325"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_33"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_33"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '33'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_33"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_34"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_34"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '34'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_34"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_35"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_35"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '35'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_35"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_36"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_36"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '36'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_36"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_37"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_37"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '37'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_37"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_38"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_38"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '38'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_38"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_39"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_39"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '39'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_39"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                </ul>
            </li>
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_4"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_4"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '4'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_4"/>
                    </xsl:with-param>
                </xsl:call-template>
                <ul>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_41"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_41"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '41'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_41"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_42"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_42"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '42'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_42"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_43"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_43"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '43'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_43"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_44"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_44"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '44'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_44"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_45"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_45"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '45'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_45"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_46"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_46"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '46'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_46"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                </ul>
            </li>
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_8"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_8"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '8'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_8"/>
                    </xsl:with-param>
                </xsl:call-template>
                <ul>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_81"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_81"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '81'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_81"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_82"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_82"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '82'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_82"/>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="make_menu-item">
                            <xsl:with-param name="title">
                                <xsl:value-of select="$title_83"/>
                            </xsl:with-param>
                            <xsl:with-param name="item">
                                <xsl:value-of select="$item_83"/>
                            </xsl:with-param>
                            <xsl:with-param name="class">
                                <xsl:choose>
                                    <xsl:when test="/html/menukey/@left2 = '83'">
                                        <xsl:value-of select="$sel"/>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:with-param>
                            <xsl:with-param name="href">
                                <xsl:value-of select="$href_83"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <ul>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_831"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_831"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '831'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_831"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_832"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_832"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '832'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_832"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                            <li>
                                <xsl:call-template name="make_menu-item">
                                    <xsl:with-param name="title">
                                        <xsl:value-of select="$title_833"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="item">
                                        <xsl:value-of select="$item_833"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="class">
                                        <xsl:choose>
                                            <xsl:when test="/html/menukey/@left3 = '833'">
                                                <xsl:value-of select="$sel"/>
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="href">
                                        <xsl:value-of select="$href_833"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_5"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_5"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '5'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_5"/>
                    </xsl:with-param>
                </xsl:call-template>
            </li>
            <li>
                <xsl:call-template name="make_menu-item">
                    <xsl:with-param name="title">
                        <xsl:value-of select="$title_6"/>
                    </xsl:with-param>
                    <xsl:with-param name="item">
                        <xsl:value-of select="$item_6"/>
                    </xsl:with-param>
                    <xsl:with-param name="class">
                        <xsl:choose>
                            <xsl:when test="/html/menukey/@left1 = '6'">
                                <xsl:value-of select="$sel"/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                    <xsl:with-param name="href">
                        <xsl:value-of select="$href_6"/>
                    </xsl:with-param>
                </xsl:call-template>
            </li>
        </ul>
    </xsl:template>
    <xsl:template name="make_menu-item">
        <xsl:param name="class"/>
        <xsl:param name="href"/>
        <xsl:param name="title"/>
        <xsl:param name="item"/>
        <a>
            <xsl:attribute name="class">
                <xsl:value-of select="$class"/>
            </xsl:attribute>
            <xsl:attribute name="href">
                <xsl:value-of select="$href"/>
            </xsl:attribute>
            <xsl:if test="string-length($title) > 0">
                <xsl:attribute name="title">
                    <xsl:value-of select="$title"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="$item"/>
        </a>
    </xsl:template>
</xsl:stylesheet>