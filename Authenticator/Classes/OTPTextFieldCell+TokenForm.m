//
//  OTPTextFieldCell+TokenForm.m
//  Authenticator
//
//  Copyright (c) 2015 Matt Rubin
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "OTPTextFieldCell+TokenForm.h"


@implementation OTPTextFieldCell (TokenForm)

+ (OTPTextFieldCell *)issuerCellWithDelegate:(id<UITextFieldDelegate>)delegate
{
    OTPTextFieldCell *issuerCell = [OTPTextFieldCell new];
    issuerCell.textLabel.text = @"Issuer";
    issuerCell.textField.placeholder = @"Some Website";
    issuerCell.textField.delegate = delegate;
    issuerCell.textField.returnKeyType = UIReturnKeyNext;
    return issuerCell;
}

+ (OTPTextFieldCell *)accountNameCellWithDelegate:(id<UITextFieldDelegate>)delegate
{
    OTPTextFieldCell *accountNameCell = [OTPTextFieldCell new];
    accountNameCell.textLabel.text = @"Account Name";
    accountNameCell.textField.placeholder = @"user@example.com";
    accountNameCell.textField.delegate = delegate;
    accountNameCell.textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    accountNameCell.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    accountNameCell.textField.keyboardType = UIKeyboardTypeEmailAddress;
    accountNameCell.textField.returnKeyType = UIReturnKeyNext;
    return accountNameCell;
}

+ (OTPTextFieldCell *)secretKeyCellWithDelegate:(id<UITextFieldDelegate>)delegate
{
    OTPTextFieldCell *secretKeyCell = [OTPTextFieldCell new];
    secretKeyCell.textLabel.text = @"Secret Key";
    secretKeyCell.textField.placeholder = @"•••• •••• •••• ••••";
    secretKeyCell.textField.delegate = delegate;
    secretKeyCell.textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    secretKeyCell.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    secretKeyCell.textField.returnKeyType = UIReturnKeyDone;
    return secretKeyCell;
}

@end
