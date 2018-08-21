baselines
baseline01: arg1
	<version: '0.1-baseline'>
	arg1
		for: #common
		do: [ | tmp10 tmp12 |
			arg1
				blessing: #baseline;
				repository: self class atsRepository;
				project: 'Pharo-EDA-Common'
					with: [ | tmp2 |
					tmp2 := arg1.
					tmp2
						className: 'ConfigurationOfPharoEDA';
						repository: self class pharoEdaRepository;
						versionString: #bleedingEdge ];
				project: 'Mustache'
					with: [ | tmp4 |
					tmp4 := arg1.
					tmp4
						className: #ConfigurationOfMustache;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/NorbertHartl/Mustache/main' ];
				project: 'Zinc-Zodiac'
					with: [ | tmp6 |
					tmp6 := arg1.
					tmp6
						className: #ConfigurationOfZincHTTPComponents;
						versionString: '2.8.10';
						repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/ZincHTTPComponents/main' ];
				project: 'Roassal2'
					with: [ | tmp8 |
					tmp8 := arg1.
					tmp8
						className: 'ConfigurationOfRoassal2';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].
			tmp10 := arg1.
			tmp10
				package: 'CC-Traits';
				package: 'CC-Domain' with: [ arg1 requires: #('CC-Traits') ];
				package: 'CC-Notification'
					with: [ arg1 requires: #('CC-Domain' 'Zinc-Zodiac' 'Mustache') ];
				package: 'CC-Settings'
					with: [ arg1 requires: #('Pharo-EDA-Common' 'CC-Traits') ];
				package: 'CC-Domain-Tests'
					with: [ arg1 requires: #('CC-Domain' 'Pharo-EDA-Common') ];
				package: 'CC-Notification-Tests'
					with: [ arg1 requires: #('CC-Notification') ];
				package: 'CC-Application'
					with: [ arg1 requires: #('CC-Domain' 'CC-Notification') ];
				package: 'CC-Application-Tests'
					with: [ arg1 requires: #('CC-Domain' 'CC-Application') ];
				package: 'CC-Tools'
					with: [ arg1 requires: #('CC-Application-Tests') ];
				package: 'CC-Tools-Tests' with: [ arg1 requires: #('CC-Tools') ];
				package: 'CC-Projections'
					with: [ arg1 requires: #('CC-Domain' 'Pharo-EDA-Common') ];
				package: 'CC-Projections-Tests'
					with: [ arg1 requires: #('CC-Domain' 'CC-Projections') ];
				package: 'CC-Visualizations'
					with: [ arg1 requires: #('CC-Domain') ];
				package: 'CC-UI'.
			tmp12 := arg1.
			tmp12
				group: 'core'
					with: #('CC-Domain' 'CC-Application' 'CC-Traits' 'CC-Tools' 'CC-Notification' 'CC-Settings' 'CC-Projections' 'CC-Visualizations' 'CC-UI');
				group: 'tests'
					with: #('CC-Domain-Tests' 'CC-Application-Tests' 'CC-Tools-Tests' 'CC-Projections-Tests' 'CC-Notification-Tests');
				group: 'default' with: #('core' 'tests') ]