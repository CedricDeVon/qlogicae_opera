#pragma once

#include <QtCore/qglobal.h>

namespace QLogicaeQtStaticLibrary
{
	#ifndef BUILD_STATIC
	# if defined(QLOGICAE_VS2022_QT_STATIC_LIBRARY_LIB)
	#  define QLOGICAE_VS2022_QT_STATIC_LIBRARY_EXPORT Q_DECL_EXPORT
	# else
	#  define QLOGICAE_VS2022_QT_STATIC_LIBRARY_EXPORT Q_DECL_IMPORT
	# endif
	#else
	# define QLOGICAE_VS2022_QT_STATIC_LIBRARY_EXPORT
	#endif
}
