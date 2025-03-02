/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the QtQml module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl-3.0.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or (at your option) the GNU General
** Public license version 3 or any later version approved by the KDE Free
** Qt Foundation. The licenses are as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL2 and LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-2.0.html and
** https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#ifndef QV4QMLCONTEXT_P_H
#define QV4QMLCONTEXT_P_H

//
//  W A R N I N G
//  -------------
//
// This file is not part of the Qt API.  It exists purely as an
// implementation detail.  This header file may change from version to
// version without notice, or even be removed.
//
// We mean it.
//

#include <QtCore/qglobal.h>
#include <private/qtqmlglobal_p.h>

#include <private/qv4object_p.h>
#include <private/qv4context_p.h>
#include <private/qqmlcontext_p.h>

QT_BEGIN_NAMESPACE

namespace QV4 {

struct QmlContextWrapper;

namespace Heap {

struct QmlContextWrapper : Object {
    void init(QQmlContextData *context, QObject *scopeObject);
    void destroy();
    bool readOnly;
    bool isNullWrapper;

    QQmlContextDataRef *context;
    QQmlQPointer<QObject> scopeObject;
};

struct QmlContext : ExecutionContext {
    void init(QV4::ExecutionContext *outerContext, QV4::QmlContextWrapper *qml);

    Pointer<QmlContextWrapper> qml;
};

}

struct Q_QML_EXPORT QmlContextWrapper : Object
{
    V4_OBJECT2(QmlContextWrapper, Object)
    V4_NEEDS_DESTROY

    inline QObject *getScopeObject() const { return d()->scopeObject; }
    inline QQmlContextData *getContext() const { return *d()->context; }

    void setReadOnly(bool b) { d()->readOnly = b; }

    static ReturnedValue get(const Managed *m, String *name, bool *hasProperty);
    static void put(Managed *m, String *name, const Value &value);
};

struct Q_QML_EXPORT QmlContext : public ExecutionContext
{
    V4_MANAGED(QmlContext, ExecutionContext)

    static Heap::QmlContext *createWorkerContext(QV4::ExecutionContext *parent, const QUrl &source, Value *sendFunction);
    static Heap::QmlContext *create(QV4::ExecutionContext *parent, QQmlContextData *context, QObject *scopeObject);

    QObject *qmlScope() const {
        return d()->qml->scopeObject;
    }
    QQmlContextData *qmlContext() const {
        return *d()->qml->context;
    }
};

}

QT_END_NAMESPACE

#endif

