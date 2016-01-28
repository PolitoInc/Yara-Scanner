rule resp_test
{
    meta:
        description = "response test"
    strings:
        $a = "html" nocase
        $b = "Set-Cookie" nocase
        $c = "<script>" nocase
        $d = /\d+\.\d+\.\d+\.\d+/
    condition:
        $a or $b or $c or $d
}
