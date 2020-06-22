This directory contains an implementation of the reftable library.

The library is integrated into the git-core project, but can also be built
standalone, by compiling with -DREFTABLE_STANDALONE. The standalone build is
exercised by the accompanying BUILD/WORKSPACE files, and can be run as

  bazel test :all

It includes a fragment of the zlib library to provide uncompress2(), which is a
recent addition to the API. zlib is licensed as follows:

```
 (C) 1995-2017 Jean-loup Gailly and Mark Adler

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.

  Jean-loup Gailly        Mark Adler
  jloup@gzip.org          madler@alumni.caltech.edu
```
