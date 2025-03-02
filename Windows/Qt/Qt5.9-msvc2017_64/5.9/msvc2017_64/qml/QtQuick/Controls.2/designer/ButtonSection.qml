/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the Qt Quick Controls 2 module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL3$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPLv3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or later as published by the Free
** Software Foundation and appearing in the file LICENSE.GPL included in
** the packaging of this file. Please review the following information to
** ensure the GNU General Public License version 2.0 requirements will be
** met: http://www.gnu.org/licenses/gpl-2.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.1
import HelperWidgets 2.0
import QtQuick.Layouts 1.0

Section {
    id: section

    SectionLayout {
        Label {
            text: qsTr("Text")
            tooltip: qsTr("The text displayed on the %1.").arg(section.caption.toLowerCase())
        }
        SecondColumnLayout {
            LineEdit {
                backendValue: backendValues.text
                Layout.fillWidth: true
            }
        }

        Label {
            text: qsTr("Highlighted")
            tooltip: qsTr("Whether the %1 is highlighted.").arg(section.caption.toLowerCase())
        }
        SecondColumnLayout {
            CheckBox {
                text: backendValues.highlighted.valueToString
                backendValue: backendValues.highlighted
                Layout.fillWidth: true
            }
        }

        Label {
            visible: checkable
            text: qsTr("Checkable")
            tooltip: qsTr("Whether the %1 is checkable.").arg(section.caption.toLowerCase())
        }
        SecondColumnLayout {
            CheckBox {
                text: backendValues.checkable.valueToString
                backendValue: backendValues.checkable
                Layout.fillWidth: true
            }
        }

        Label {
            text: qsTr("Checked")
            tooltip: qsTr("Whether the %1 is checked.").arg(section.caption.toLowerCase())
        }
        SecondColumnLayout {
            CheckBox {
                text: backendValues.checked.valueToString
                backendValue: backendValues.checked
                Layout.fillWidth: true
            }
        }

        Label {
            text: qsTr("Exclusive")
            tooltip: qsTr("Whether the %1 is exclusive.").arg(section.caption.toLowerCase())
        }
        SecondColumnLayout {
            CheckBox {
                text: backendValues.autoExclusive.valueToString
                backendValue: backendValues.autoExclusive
                Layout.fillWidth: true
            }
        }

        Label {
            text: qsTr("Repeat")
            tooltip: qsTr("Whether the %1 repeats while pressed and held down.").arg(section.caption.toLowerCase())
        }
        SecondColumnLayout {
            CheckBox {
                text: backendValues.autoRepeat.valueToString
                backendValue: backendValues.autoRepeat
                Layout.fillWidth: true
            }
        }
    }
}
