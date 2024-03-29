/****************************************************************************
**
** Copyright (C) 2014 Klaralvdalens Datakonsult AB (KDAB).
** Copyright (C) 2016 The Qt Company Ltd and/or its subsidiary(-ies).
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt3D module of the Qt Toolkit.
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

#ifndef QT3DRENDER_QRENDERPASS_H
#define QT3DRENDER_QRENDERPASS_H

#include <Qt3DRender/qt3drender_global.h>

#include <Qt3DRender/qshaderprogram.h>
#include <Qt3DRender/qrenderstate.h>
#include <Qt3DRender/qfilterkey.h>

#include <QHash>

QT_BEGIN_NAMESPACE

namespace Qt3DRender {

class QParameter;
class QRenderState;
typedef QVector<QParameter*> ParameterList;

class QRenderPassPrivate;

class QT3DRENDERSHARED_EXPORT QRenderPass : public Qt3DCore::QNode
{
    Q_OBJECT
    Q_PROPERTY(Qt3DRender::QShaderProgram *shaderProgram READ shaderProgram WRITE setShaderProgram NOTIFY shaderProgramChanged)

public:
    explicit QRenderPass(Qt3DCore::QNode *parent = nullptr);
    ~QRenderPass();

    QShaderProgram *shaderProgram() const;

    void addFilterKey(QFilterKey *filterKey);
    void removeFilterKey(QFilterKey *filterKey);
    QVector<QFilterKey*> filterKeys() const;

    void addRenderState(QRenderState *state);
    void removeRenderState(QRenderState *state);
    QVector<QRenderState *> renderStates() const;

    void addParameter(QParameter *p);
    void removeParameter(QParameter *p);
    QVector<QParameter *> parameters() const;

public Q_SLOTS:
    void setShaderProgram(QShaderProgram *shaderProgram);

Q_SIGNALS:
    void shaderProgramChanged(QShaderProgram *shaderProgram);

protected:
    explicit QRenderPass(QRenderPassPrivate &dd, Qt3DCore::QNode *parent = nullptr);

private:
    Q_DECLARE_PRIVATE(QRenderPass)
    Qt3DCore::QNodeCreatedChangeBasePtr createNodeCreationChange() const Q_DECL_OVERRIDE;
};

}

QT_END_NAMESPACE

#endif // QT3DRENDER_QRENDERPASS_H
