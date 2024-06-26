import QtQuick 1.1
import com.victron.velib 1.0
import "utils.js" as Utils

MbPage {
	id: root

        property string rgpioSettings: "dbus/com.victronenergy.settings/Settings/RemoteGPIO/Unit2"
        property string serviceSetting: "dbus/com.victronenergy.settings/Settings/Services/RemoteGPIO"

	title: qsTr("Unit 2 Configuration")


	model: VisualModels {
		VisibleItemModel {

			MbItemOptions {
                id: numrelays
                description: qsTr("Number of Relays")
                bind: [rgpioSettings, "/NumRelays"]
                show: enable.checked
                possibleValues: [
                    MbOption {description: qsTr("2 Relays"); value: 2},
                    MbOption {description: qsTr("4 Relays"); value: 4},
                    MbOption {description: qsTr("8 Relays"); value: 8}
                ]
            }    
		}
	}
}