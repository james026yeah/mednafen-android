#include <endian.h>

#if BYTE_ORDER==LITTLE_ENDIAN
/* Define on little-endian platforms. */
    #define LSB_FIRST 1
#endif

#if BYTE_ORDER==BIG_ENDIAN
/* Define on big-endian platforms. */
    #define MSB_FIRST 1
#endif

/* Mednafen version definition. */
#define MEDNAFEN_VERSION "0.9.38.7"

/* Mednafen version numeric. */
#define MEDNAFEN_VERSION_NUMERIC 0x000938

/* Name of package */
#define PACKAGE "mednafen"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME ""

/* Define to the full name and version of this package. */
#define PACKAGE_STRING ""

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME ""

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION ""

/* Define if <inttypes.h> exists and defines unusable PRI* macros. */
/* #undef PRI_MACROS_BROKEN */

/* Defines the filesystem path-separator type. */
#define PSS_STYLE 1

/* Define if the pthread_in_use() detection is hard. */
/* #undef PTHREAD_IN_USE_DETECTION_HARD */

/* The size of `char', as computed by sizeof. */
#define SIZEOF_CHAR 1

/* The size of `double', as computed by sizeof. */
#define SIZEOF_DOUBLE 8

/*compress use it */
/* The size of `int', as computed by sizeof. */
#define SIZEOF_INT 4

/*compress use it */
/* The size of `long', as computed by sizeof. */
#define SIZEOF_LONG 8

/*compress use it*/
/* The size of `long long', as computed by sizeof. */
#define SIZEOF_LONG_LONG 8

/* The size of `off_t', as computed by sizeof. */
#define SIZEOF_OFF_T 8

/*compress use it*/
/* The size of `ptrdiff_t', as computed by sizeof. */
#define SIZEOF_PTRDIFF_T 8

/*compress use it*/
/* The size of `short', as computed by sizeof. */
#define SIZEOF_SHORT 2

/*compress use it*/
/* The size of `size_t', as computed by sizeof. */
#define SIZEOF_SIZE_T 8

/*compress use it*/
/* The size of `void *', as computed by sizeof. */
#define SIZEOF_VOID_P 8

/*compress use it*/
/* The size of `__int64', as computed by sizeof. */
#define SIZEOF___INT64 0

