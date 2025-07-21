import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String? dialogMessage;

  final void Function()? onCancel;
  final String? cancelLabel;

  final void Function()? onConfirm;
  final String? confirmLabel;

  const DialogBox({
    super.key,
    required this.dialogMessage,
    required this.onCancel,
    required this.cancelLabel,
    required this.onConfirm,
    required this.confirmLabel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .primary,
      content: Text(
        dialogMessage ?? '',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: onCancel,
              child: Text(cancelLabel ?? ''),
            ),
            MaterialButton(
              onPressed: onConfirm,
              child: Text(confirmLabel ?? ''),
            ),
          ],
        ),
      ],
    );
  }
}
