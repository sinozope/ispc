
export uniform int width() { return programCount; }


uniform int foo(int i);

export void f_f(uniform float RET[], uniform float aFOO[]) {
    for (uniform int i = 0; i < programCount; ++i)
        RET[i] = 0;

    foreach_tiled (i = 2 ... 0)
        RET[i] += 1234;
}

export void result(uniform float RET[]) {
    RET[programIndex] = 0;
}
