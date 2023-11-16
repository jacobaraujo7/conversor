import 'package:conversor/src/repositories/moeda_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Converter um xml em uma lista de MoedaModel', () {
    final repository = MoedaRepository();
    final moedas = repository.parseMoedas(xml);
    print(moedas);
  });

  test('Pegar apenas a cotação', () {
    final repository = MoedaRepository();
    final cotacao = repository.parseCotacao(json, 'USDBRL');

    expect(cotacao, 4.862);
  });
}

const json =
    '''
{
  "USDBRL": {
    "code": "USD",
    "codein": "BRL",
    "name": "Dólar Americano/Real Brasileiro",
    "high": "4.8659",
    "low": "4.861",
    "varBid": "-0.0028",
    "pctChange": "-0.06",
    "bid": "4.862",
    "ask": "4.8632",
    "timestamp": "1700075032",
    "create_date": "2023-11-15 16:03:52"
  }
}

''';

const xml =
    '''
<xml>
<AED>Dirham dos Emirados</AED>
<AFN>Afghani do Afeganistão</AFN>
<ALL>Lek Albanês</ALL>
<AMD>Dram Armênio</AMD>
<ANG>Guilder das Antilhas</ANG>
<AOA>Kwanza Angolano</AOA>
<ARS>Peso Argentino</ARS>
<AUD>Dólar Australiano</AUD>
<AZN>Manat Azeri</AZN>
<BAM>Marco Conversível</BAM>
<BBD>Dólar de Barbados</BBD>
<BDT>Taka de Bangladesh</BDT>
<BGN>Lev Búlgaro</BGN>
<BHD>Dinar do Bahrein</BHD>
<BIF>Franco Burundinense</BIF>
<BND>Dólar de Brunei</BND>
<BOB>Boliviano</BOB>
<BRL>Real Brasileiro</BRL>
<BRLT>Real Brasileiro Turismo</BRLT>
<BSD>Dólar das Bahamas</BSD>
<BTC>Bitcoin</BTC>
<BWP>Pula de Botswana</BWP>
<BYN>Rublo Bielorrusso</BYN>
<BZD>Dólar de Belize</BZD>
<CAD>Dólar Canadense</CAD>
<CHF>Franco Suíço</CHF>
<CHFRTS>Franco Suíço</CHFRTS>
<CLP>Peso Chileno</CLP>
<CNH>Yuan chinês offshore</CNH>
<CNY>Yuan Chinês</CNY>
<COP>Peso Colombiano</COP>
<CRC>Colón Costarriquenho</CRC>
<CUP>Peso Cubano</CUP>
<CVE>Escudo cabo-verdiano</CVE>
<CZK>Coroa Checa</CZK>
<DJF>Franco do Djubouti</DJF>
<DKK>Coroa Dinamarquesa</DKK>
<DOGE>Dogecoin</DOGE>
<DOP>Peso Dominicano</DOP>
<DZD>Dinar Argelino</DZD>
<EGP>Libra Egípcia</EGP>
<ETB>Birr Etíope</ETB>
<ETH>Ethereum</ETH>
<EUR>Euro</EUR>
<FJD>Dólar de Fiji</FJD>
<GBP>Libra Esterlina</GBP>
<GEL>Lari Georgiano</GEL>
<GHS>Cedi Ganês</GHS>
<GMD>Dalasi da Gâmbia</GMD>
<GNF>Franco de Guiné</GNF>
<GTQ>Quetzal Guatemalteco</GTQ>
<HKD>Dólar de Hong Kong</HKD>
<HNL>Lempira Hondurenha</HNL>
<HRK>Kuna Croata</HRK>
<HTG>Gourde Haitiano</HTG>
<HUF>Florim Húngaro</HUF>
<IDR>Rupia Indonésia</IDR>
<ILS>Novo Shekel Israelense</ILS>
<INR>Rúpia Indiana</INR>
<IQD>Dinar Iraquiano</IQD>
<IRR>Rial Iraniano</IRR>
<ISK>Coroa Islandesa</ISK>
<JMD>Dólar Jamaicano</JMD>
<JOD>Dinar Jordaniano</JOD>
<JPY>Iene Japonês</JPY>
<JPYRTS>Iene Japonês</JPYRTS>
<KES>Shilling Queniano</KES>
<KGS>Som Quirguistanês</KGS>
<KHR>Riel Cambojano</KHR>
<KMF>Franco Comorense</KMF>
<KRW>Won Sul-Coreano</KRW>
<KWD>Dinar Kuwaitiano</KWD>
<KYD>Dólar das Ilhas Cayman</KYD>
<KZT>Tengue Cazaquistanês</KZT>
<LAK>Kip Laosiano</LAK>
<LBP>Libra Libanesa</LBP>
<LKR>Rúpia de Sri Lanka</LKR>
<LSL>Loti do Lesoto</LSL>
<LTC>Litecoin</LTC>
<LYD>Dinar Líbio</LYD>
<MAD>Dirham Marroquino</MAD>
<MDL>Leu Moldavo</MDL>
<MGA>Ariary Madagascarense</MGA>
<MKD>Denar Macedônio</MKD>
<MMK>Kyat de Mianmar</MMK>
<MNT>Mongolian Tugrik</MNT>
<MOP>Pataca de Macau</MOP>
<MRO>Ouguiya Mauritana</MRO>
<MUR>Rúpia Mauriciana</MUR>
<MVR>Rufiyaa Maldiva</MVR>
<MWK>Kwacha Malauiana</MWK>
<MXN>Peso Mexicano</MXN>
<MYR>Ringgit Malaio</MYR>
<MZN>Metical de Moçambique</MZN>
<NAD>Dólar Namíbio</NAD>
<NGN>Naira Nigeriana</NGN>
<NGNI>Naira Nigeriana</NGNI>
<NGNPARALLEL>Naira Nigeriana</NGNPARALLEL>
<NIO>Córdoba Nicaraguense</NIO>
<NOK>Coroa Norueguesa</NOK>
<NPR>Rúpia Nepalesa</NPR>
<NZD>Dólar Neozelandês</NZD>
<OMR>Rial Omanense</OMR>
<PAB>Balboa Panamenho</PAB>
<PEN>Sol do Peru</PEN>
<PGK>Kina Papua-Nova Guiné</PGK>
<PHP>Peso Filipino</PHP>
<PKR>Rúpia Paquistanesa</PKR>
<PLN>Zlóti Polonês</PLN>
<PYG>Guarani Paraguaio</PYG>
<QAR>Rial Catarense</QAR>
<RON>Leu Romeno</RON>
<RSD>Dinar Sérvio</RSD>
<RUB>Rublo Russo</RUB>
<RUBTOD>Rublo Russo</RUBTOD>
<RUBTOM>Rublo Russo</RUBTOM>
<RWF>Franco Ruandês</RWF>
<SAR>Riyal Saudita</SAR>
<SCR>Rúpias de Seicheles</SCR>
<SDG>Libra Sudanesa</SDG>
<SDR>DSE</SDR>
<SEK>Coroa Sueca</SEK>
<SGD>Dólar de Cingapura</SGD>
<SOS>Shilling Somaliano</SOS>
<STD>Dobra São Tomé/Príncipe</STD>
<SVC>Colon de El Salvador</SVC>
<SYP>Libra Síria</SYP>
<SZL>Lilangeni Suazilandês</SZL>
<THB>Baht Tailandês</THB>
<TJS>Somoni do Tajiquistão</TJS>
<TMT>TMT</TMT>
<TND>Dinar Tunisiano</TND>
<TRY>Nova Lira Turca</TRY>
<TTD>Dólar de Trinidad</TTD>
<TWD>Dólar Taiuanês</TWD>
<TZS>Shilling Tanzaniano</TZS>
<UAH>Hryvinia Ucraniana</UAH>
<UGX>Shilling Ugandês</UGX>
<USD>Dólar Americano</USD>
<USDT>Dólar Americano</USDT>
<UYU>Peso Uruguaio</UYU>
<UZS>Som Uzbequistanês</UZS>
<VEF>Bolívar Venezuelano</VEF>
<VND>Dong Vietnamita</VND>
<VUV>Vatu de Vanuatu</VUV>
<XAF>Franco CFA Central</XAF>
<XAGG>Prata</XAGG>
<XBR>Brent Spot</XBR>
<XCD>Dólar do Caribe Oriental</XCD>
<XOF>Franco CFA Ocidental</XOF>
<XPF>Franco CFP</XPF>
<XRP>XRP</XRP>
<YER>Riyal Iemenita</YER>
<ZAR>Rand Sul-Africano</ZAR>
<ZMK>Kwacha Zambiana</ZMK>
<ZWL>Dólar Zimbabuense</ZWL>
<XAU>Ouro</XAU>
</xml>
''';
