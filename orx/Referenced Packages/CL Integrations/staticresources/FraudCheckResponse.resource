<?xml version="1.0" encoding="UTF-8"?>
<BCAmessage service-request-id="Test1" type="Test2">
	<BCAservices>
		<BCAservice>
			<BCAservice-code>Test3</BCAservice-code>
			<BCAservice-code-version>Test4</BCAservice-code-version>
			<BCAservice-client-ref>Test5</BCAservice-client-ref>
			<BCAservice-data>
				<response version="Test6">
					<verification-suite-summary>
						<vericheck-indicator result="Test7"/>
						<fraudcheck-indicator result="Test8"/>
						<birth-certificate-verification-indicator result="Test9"/>
						<ftra-bureau-check-indicator result="Test10"/>
						<dfat-verification-indicator result="Test11"/>
						<ofac-verification-indicator result="Test12"/>
						<vericheck-aml-credit-indicator result="Test13"/>
					</verification-suite-summary>
					<vericheck-report>
						<report-summary code="Test14">Test15</report-summary>
						<drivers-licence-result match-summary="Test16">
							<number-indicator match="Test17"/>
							<name-indicator match="Test18"/>
						</drivers-licence-result>
						<phone-listing-result match-summary="Test19" type="Test20">
							<phone-indicator match="Test21"/>
							<family-name-indicator match="Test22"/>
							<initials-indicator match="Test23"/>
							<address-indicator match="Test25" type="Test24">
								<unit-number-indicator match="Test26"/>
								<street-number-indicator match="Test27"/>
								<property-indicator match="Test28"/>
								<street-name-indicator match="Test29"/>
								<street-type-indicator match="Test30"/>
								<suburb-indicator match="Test31"/>
								<state-indicator match="Test32"/>
								<postcode-indicator match="Test33"/>
							</address-indicator>
						</phone-listing-result>
						<electoral-roll-result match-summary="Test34" type="Test35">
							<address-indicator match="Test36" type="Test37">
								<unit-number-indicator match="Test38"/>
								<street-number-indicator match="absent"/>
								<property-indicator match="Test39"/>
								<street-name-indicator match="Test40"/>
								<street-type-indicator match="Test41"/>
								<suburb-indicator match="Test42"/>
								<state-indicator match="Test43"/>
								<postcode-indicator match="Test44"/>
							</address-indicator>
							<address-indicator match="Test36" type="Test37">
								<unit-number-indicator match="Test38"/>
								<street-number-indicator match="absent"/>
								<property-indicator match="Test39"/>
								<street-name-indicator match="Test40"/>
								<street-type-indicator match="Test41"/>
								<suburb-indicator match="Test42"/>
								<state-indicator match="Test43"/>
								<postcode-indicator match="Test44"/>
							</address-indicator>
							<individual-name-indicator match="Test45">
								<first-given-name-indicator match="Test46" match-initial="Test47"/>
								<other-given-name-indicator match="Test48" match-initial="Test49"/>
								<family-name-indicator match="Test50"/>
							</individual-name-indicator>
						</electoral-roll-result>
					</vericheck-report>
					<fraudcheck-report>
						<fraudcheck-result>
							<fraud-file-number>Test51</fraud-file-number>
							<fraudcheck-result-summary>
								<fraudcheck-phone-indicator match-with="Test52"/>
								<fraudcheck-employer-phone-indicator match-with="Test53"/>
								<fraudcheck-guarantor-phone-indicator match-with="Test54"/>
								<fraudcheck-referee-phone-indicator match-with="Test55"/>
								<fraudcheck-address-indicator match="Test56"/>
								<fraudcheck-employer-indicator match="Test57"/>
								<fraudcheck-drivers-licence-indicator match="Test58"/>
								<fraudcheck-passport-indicator match="Test59"/>
								<fraudcheck-second-phone-indicator match-with="Test60"/>
							</fraudcheck-result-summary>
							<fraudcheck-result-details>
								<date-fraud-occurred>Test61</date-fraud-occurred>
								<reporting-subscriber>Test62</reporting-subscriber>
								<fraud-type>Test63</fraud-type>
								<employment-status>Test64</employment-status>
								<fraud-subject role="Test65"/>
								<address>
									<unit-number>Test65</unit-number>
									<street-number>Test66</street-number>
									<property>Test67</property>
									<street-name>Test68</street-name>
									<street-type code="Test69"/>
									<suburb>Test70</suburb>
									<city>Test71</city>
									<state>Test72</state>
									<postcode>Test73</postcode>
									<country country-code="Test74"/>
								</address>
								<passport-number country-code="AU">Test75</passport-number>
							</fraudcheck-result-details>
						</fraudcheck-result>
						<fraudcheck-result>
							<fraud-file-number>Test76</fraud-file-number>
							<fraudcheck-result-summary>
								<fraudcheck-phone-indicator match-with="Test76"/>
								<fraudcheck-employer-phone-indicator match-with="Test76"/>
								<fraudcheck-guarantor-phone-indicator match-with="Test76"/>
								<fraudcheck-referee-phone-indicator match-with="Test76"/>
								<fraudcheck-address-indicator match="Test76"/>
								<fraudcheck-employer-indicator match="Test76"/>
								<fraudcheck-drivers-licence-indicator match="Test76"/>
								<fraudcheck-passport-indicator match="Test76"/>
								<fraudcheck-second-phone-indicator match-with="Test76"/>
							</fraudcheck-result-summary>
							<fraudcheck-result-details>
								<date-fraud-occurred>Test77</date-fraud-occurred>
								<reporting-subscriber>Test77</reporting-subscriber>
								<fraud-type>Test77</fraud-type>
								<employment-status>Test77</employment-status>
								<fraud-subject role="Test77"/>
								<address>
									<unit-number>Test78</unit-number>
									<street-number>Test78</street-number>
									<property>Test78</property>
									<street-name>Test78</street-name>
									<street-type code="Test78"/>
									<suburb>Test78</suburb>
									<city>Test78</city>
									<state>Test78</state>
									<postcode>Test78</postcode>
									<country country-code="Test78"/>
								</address>
							</fraudcheck-result-details>
						</fraudcheck-result>
						<fraudcheck-result>
							<fraud-file-number>Test79</fraud-file-number>
							<fraudcheck-result-summary>
								<fraudcheck-phone-indicator match-with="Test79"/>
								<fraudcheck-employer-phone-indicator match-with="Test79"/>
								<fraudcheck-guarantor-phone-indicator match-with="Test79"/>
								<fraudcheck-referee-phone-indicator match-with="Test79"/>
								<fraudcheck-address-indicator match="Test79"/>
								<fraudcheck-employer-indicator match="Test79"/>
								<fraudcheck-drivers-licence-indicator match="Test79"/>
								<fraudcheck-passport-indicator match="Test79"/>
								<fraudcheck-second-phone-indicator match-with="Test79"/>
							</fraudcheck-result-summary>
							<fraudcheck-result-details>
								<date-fraud-occurred>Test79</date-fraud-occurred>
								<reporting-subscriber>Test79</reporting-subscriber>
								<fraud-type>Test79</fraud-type>
								<employment-status>Test79</employment-status>
								<fraud-subject role="Test79"/>
								<address>
									<street-number>Test80</street-number>
									<street-name>Test80</street-name>
									<street-type code="Test80"/>
									<suburb>Test80</suburb>
									<state>Test80</state>
									<postcode>Test80</postcode>
									<country country-code="Test80"/>
								</address>
								<address>
									<street-number>Test81</street-number>
									<street-name>Test81</street-name>
									<street-type code="Test81"/>
									<suburb>Test81</suburb>
									<state>Test81</state>
									<postcode>Test81</postcode>
									<country country-code="Test81"/>
								</address>
								<phone-details>
									<isd>Test82</isd>
									<phone-area-code>Test82</phone-area-code>
									<phone-number>Test82</phone-number>
								</phone-details>
								<second-phone-details>
									<isd>Test83</isd>
									<phone-number>Test83</phone-number>
									<phone-area-code>Test83</phone-area-code>
								</second-phone-details>
								<employer-phone-details>
									<isd>Test84</isd>
									<phone-number>Test84</phone-number>
									<phone-area-code>Test84</phone-area-code>
								</employer-phone-details>
								<referee-phone-details>
									<isd>Test85</isd>
									<phone-number>Test85</phone-number>
									<phone-area-code>Test85</phone-area-code>
								</referee-phone-details>
								<guarantor-phone-details>
									<isd>Test86</isd>
									<phone-number>Test86</phone-number>
									<phone-area-code>Test86</phone-area-code>
								</guarantor-phone-details>
							</fraudcheck-result-details>
						</fraudcheck-result>
						<fraudcheck-result>
							<fraud-file-number>Test87</fraud-file-number>
							<fraudcheck-result-summary>
								<fraudcheck-phone-indicator match-with="Test87"/>
								<fraudcheck-employer-phone-indicator match-with="Test87"/>
								<fraudcheck-guarantor-phone-indicator match-with="Test87"/>
								<fraudcheck-referee-phone-indicator match-with="Test87"/>
								<fraudcheck-address-indicator match="Test87"/>
								<fraudcheck-employer-indicator match="Test87"/>
								<fraudcheck-drivers-licence-indicator match="Test87"/>
								<fraudcheck-passport-indicator match="Test87"/>
								<fraudcheck-second-phone-indicator match-with="Test87"/>
							</fraudcheck-result-summary>
							<fraudcheck-result-details>
								<date-fraud-occurred>Test87</date-fraud-occurred>
								<reporting-subscriber>Test87</reporting-subscriber>
								<fraud-type>Test87</fraud-type>
								<employment-status>Test87</employment-status>
								<fraud-subject role="Test87"/>
								<comment>Test87</comment>
								<address>
									<street-number>Test87</street-number>
									<street-name>Test87</street-name>
									<street-type code="Test87"/>
									<suburb>Test87</suburb>
									<state>Test87</state>
									<postcode>Test87</postcode>
									<country country-code="Test87"/>
								</address>
							</fraudcheck-result-details>
						</fraudcheck-result>
					</fraudcheck-report>
					<bureau-report>
						<bureau-result bureau-file-create-date="Test88" bureau-report-type="Test88" type="Test88">
							<score-indicator match="Test88"/>
							<address-indicator match="Test89" type="Test89">
								<unit-number-indicator match="Test89"/>
								<street-number-indicator match="Test89"/>
								<property-indicator match="Test89"/>
								<street-name-indicator match="Test89"/>
								<street-type-indicator match="Test89"/>
								<suburb-indicator match="Test89"/>
								<state-indicator match="Test89"/>
								<postcode-indicator match="Test89"/>
							</address-indicator>
							<address-indicator match="Test90" type="Test90">
								<unit-number-indicator match="Test90"/>
								<street-number-indicator match="Test90"/>
								<property-indicator match="Test90"/>
								<street-name-indicator match="Test90"/>
								<street-type-indicator match="Test90"/>
								<suburb-indicator match="Test90"/>
								<state-indicator match="Test90"/>
								<postcode-indicator match="Test90"/>
							</address-indicator>
							<individual-name-indicator match="Test91">
								<first-given-name-indicator match="Test91" match-initial="Test91"/>
								<other-given-name-indicator match="Test91" match-initial="Test91"/>
								<family-name-indicator match="Test91"/>
							</individual-name-indicator>
							<date-of-birth-indicator>
								<date-of-birth-indicator match="Test92"/>
								<date-of-birth-day-indicator match="Test92"/>
								<date-of-birth-month-indicator match="Test92"/>
								<date-of-birth-year-indicator match="Test92"/>
							</date-of-birth-indicator>
							<delivery-point-identifier-indicator match="Test93"/>
						</bureau-result>
					</bureau-report>
					<aml-summary>
						<name-address-present aml-indicator="Test94"/>
						<date-of-birth-present aml-indicator="Test92"/>
						<history-present aml-indicator="Test92"/>
						<safe-harbour-present aml-indicator="Test92"/>
						<minimal-requirements>
							<name-address-met aml-indicator="Test93"/>
							<name-and-dob-met aml-indicator="Test93"/>
							<match-criteria-met aml-indicator="Test93"/>
						</minimal-requirements>
					</aml-summary>
					<general-message>Test94</general-message>
					<error>
						<error-type code="AD">Test95</error-type>
						<input-container>Test95</input-container>
						<error-description code="Test95">Test95</error-description>
					</error>
				</response>
			</BCAservice-data>
		</BCAservice>
	</BCAservices>
</BCAmessage>