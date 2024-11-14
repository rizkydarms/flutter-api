import 'package:flutter/material.dart';

class BillingView extends StatelessWidget {
  const BillingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  // Membungkus dengan SingleChildScrollView
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pilih Billing
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Pilih Jenis Pembayaran',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
              ),
            ),
            DropdownButton<String>(
              isExpanded: true,
              hint: Text('Pilih Jenis Pembayaran'),
              items: [
                'PDAM',
                'PLN',
                'BPJS',
                'Telepon',
              ].map((billing) {
                return DropdownMenuItem<String>(
                  value: billing,
                  child: Text(billing),
                );
              }).toList(),
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // Input Billing Account
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Masukkan Nomor Pembayaran',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Contoh: 123123123',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Check untuk melihat total tagihan
            ElevatedButton(
              onPressed: () {},
              child: const Text("Check Tagihan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Colors.black.withOpacity(0.15),
                elevation: 5,
              ),
            ),
            const SizedBox(height: 20),

            // Tampilan Billing dan Total Tagihan
            Card(
              margin: const EdgeInsets.only(top: 20),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kategori: PDAM',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Nama Billing: Nama Perusahaan Air',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[700],
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Total Tagihan: Rp. 150,000',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.green[700],
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Input Amount yang akan dibayar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Masukkan Jumlah yang Dibayar',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Contoh: 150000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            // Tombol Bayar
            ElevatedButton(
              onPressed: () {},
              child: const Text("Bayar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Colors.black.withOpacity(0.15),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
