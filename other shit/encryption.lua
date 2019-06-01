Dim DES As New DESCryptoServiceProvider

 Function Encrypt(input As String) As String

        DES.Mode = CipherMode.ECB

        Dim buffer As Byte() = ASCIIEncoding.ASCII.GetBytes(input)

        Return Convert.ToBase64String(DES.CreateEncryptor().TransformFinalBlock(buffer, 0, buffer.Length))

    End Function

    Function Decrypt(input As String) As String

        DES.Mode = CipherMode.ECB

        Dim Buffer As Byte() = Convert.FromBase64String(input)

        Return ASCIIEncoding.ASCII.GetString(DES.CreateDecryptor().TransformFinalBlock(Buffer, 0, Buffer.Length))

    End Function
{\rtf1}